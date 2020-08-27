require 'rails_helper'

feature 'study_tip', type: :feature do
  let(:admin) { create(:admin) }

  scenario '管理者が新規情報を登録できること' do
    # ログイン前にnewボタンがない
    visit study_tips_path
    expect(page).to have_no_content('new')
    # ログイン処理
    visit new_admin_session_path
    fill_in 'admin_session_name', with: admin.name
    fill_in 'admin_session_password', with: admin.password
    find('input[name="commit"]').click
    expect(current_path).to eq tops_path
    visit study_tips_path
    expect(page).to have_content('new')
    # 新規情報作成
    expect {
      click_link('new')
      expect(current_path).to eq new_study_tip_path
      fill_in 'study_tip-title', with: 'prompt'
      fill_in 'study_tip-detail', with: 'feature_spec_test'
      attach_file "study_tip-image", "app/assets/images/cafe1.webp"
      find('input[type="submit"]').click
    }.to change(StudyTip, :count).by(1)
  end

end
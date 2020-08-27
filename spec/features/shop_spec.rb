require 'rails_helper'

feature 'shop', type: :feature do
  let(:admin) { create(:admin) }

  scenario '管理者が新規情報を登録できること' do
    # ログイン前にnewボタンがない
    visit shops_path
    expect(page).to have_no_content('new')
    # ログイン処理
    visit new_admin_session_path
    fill_in 'admin_session_name', with: admin.name
    fill_in 'admin_session_password', with: admin.password
    find('input[name="commit"]').click
    expect(current_path).to eq tops_path
    visit shops_path
    expect(page).to have_content('new')
    # 新規情報作成
    expect {
      click_link('new')
      expect(current_path).to eq new_shop_path
      fill_in 'shop-name', with: 'prompt'
      fill_in 'shop-detail', with: 'feature_spec_test'
      attach_file "shop-image", "app/assets/images/cafe1.webp"
      fill_in 'shop-tel', with: '000-000-0000'
      fill_in 'shop-address', with: 'feature_spec_test'
      fill_in 'shop-url', with: 'feature_spec_test'
      find('input[type="submit"]').click
    }.to change(Shop, :count).by(1)
  end

end
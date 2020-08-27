require 'rails_helper'

feature 'message', type: :feature do
  let(:user) { create(:user) }

  scenario 'ユーザーが新規情報を登録できること' do
    # ログイン前にnewボタンがない
    visit messages_path
    expect(page).to have_no_button('SEND')
    # ログイン処理
    visit new_user_session_path
    fill_in 'user_session_name', with: user.name
    fill_in 'user_session_email', with: user.email
    fill_in 'user_session_password', with: user.password
    find('input[name="commit"]').click
    expect(current_path).to eq messages_path
    expect(page).to have_button('SEND')
    # 新規情報作成
    expect {
      fill_in 'message-text', with: 'prompt'
      find('input[type="submit"]').click
    }.to change(Message, :count).by(1)
  end

end
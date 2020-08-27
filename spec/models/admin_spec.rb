require 'rails_helper'

describe Admin do
  describe '#create' do

    it "name、email、passwordとpassword_confirmationが存在すれば登録できること" do
      admin = build(:admin)
      expect(admin).to be_valid
    end

    it "nameがない場合は登録できないこと" do
      admin = build(:admin, name: "")
      admin.valid?
      expect(admin.errors[:name]).to include("can't be blank")
    end

    it "emailがない場合は登録できないこと" do
      admin = build(:admin, email: "")
      admin.valid?
      expect(admin.errors[:email]).to include("can't be blank")
    end

    it "passwordがない場合は登録できないこと" do
      admin = build(:admin, password: "")
      admin.valid?
      expect(admin.errors[:password]).to include("can't be blank")
    end

    it "passwordが存在してもpassword_confirmationがない場合は登録できないこと" do
      admin = build(:admin, password_confirmation: "")
      admin.valid?
      expect(admin.errors[:password_confirmation]).to include("can't be blank")
    end

    it "重複したemailが存在する場合は登録できないこと" do
      admin = create(:admin)
      another_admin = build(:admin, email: admin.email)
      another_admin.valid?
      expect(another_admin.errors[:email]).to include("has already been taken")
    end

    it "passwordが6文字以上であれば登録できること" do
      admin = build(:admin, password: "000000", password_confirmation: "000000")
      admin.valid?
      expect(admin).to be_valid
    end

    it "passwordが5文字以下であれば登録できないこと" do
      admin = build(:admin, password: "00000", password_confirmation: "00000")
      admin.valid?
      expect(admin.errors[:password]).to include("is too short (minimum is 6 characters)")
    end

  end
end
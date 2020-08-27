require 'rails_helper'

describe Message do
  describe '#create' do

    it "text、imageが存在すれば登録できること" do
      message = build(:message)
      expect(message).to be_valid
    end

    it "textがない場合は登録できないこと" do
      message = build(:message, text: "")
      message.valid?
      expect(message.errors[:text]).to include("can't be blank")
    end

  end
end
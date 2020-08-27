require 'rails_helper'

describe Shop do
  describe '#create' do

    it "name、detail、aicon_image、tel、address、urlが存在すれば登録できること" do
      shop = build(:shop)
      expect(shop).to be_valid
    end

    it "nameがない場合は登録できないこと" do
      shop = build(:shop, name: "")
      shop.valid?
      expect(shop.errors[:name]).to include("can't be blank")
    end

    it "detailがない場合は登録できないこと" do
      shop = build(:shop, detail: "")
      shop.valid?
      expect(shop.errors[:detail]).to include("can't be blank")
    end

  end
end
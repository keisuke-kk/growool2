require 'rails_helper'

describe StudyTip do
  describe '#create' do

    it "title、detail、imageが存在すれば登録できること" do
      study_tip = build(:study_tip)
      expect(study_tip).to be_valid
    end

    it "titleがない場合は登録できないこと" do
      study_tip = build(:study_tip, title: "")
      study_tip.valid?
      expect(study_tip.errors[:title]).to include("can't be blank")
    end

    it "detailがない場合は登録できないこと" do
      study_tip = build(:study_tip, detail: "")
      study_tip.valid?
      expect(study_tip.errors[:detail]).to include("can't be blank")
    end

  end
end
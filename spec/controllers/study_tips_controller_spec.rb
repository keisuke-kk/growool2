require 'rails_helper'

describe StudyTipsController do

  describe 'GET #new' do
    it "new.html.erbに遷移すること" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "@study_tipに正しい値が入っていること" do
      study_tip = create(:study_tip)
      get :edit, params: { id: study_tip }
      expect(assigns(:study_tip)).to eq study_tip
    end

    it "edit.html.erbに遷移すること" do
      study_tip = create(:study_tip)
      get :edit, params: { id: study_tip }
      expect(response).to render_template :edit
    end
  end

  describe 'GET #index' do
    it "@study_tipsに正しい値が入っていること" do
      study_tips = create_list(:study_tip, 3)
      get :index
      expect(assigns(:study_tips)).to match(study_tips)
    end

    it "index.html.erbに遷移すること" do
      get :index
      expect(response).to render_template :index
    end
  end

end

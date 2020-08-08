class StudyTipsController < ApplicationController

  def index
    @study_tips = StudyTip.all
  end

  def new
    @study_tip = StudyTip.new
  end

  def create
    StudyTip.create(study_tip_params)
    redirect_to study_tips_path
  end

  def destroy
    study_tip = StudyTip.find(params[:id])
    study_tip.destroy
    redirect_to study_tips_path
  end

  def edit
    @study_tip = StudyTip.find(params[:id])
  end

  def update
    study_tip = StudyTip.find(params[:id])
    study_tip.update(study_tip_params)
    redirect_to study_tips_path
  end

  private

    def study_tip_params
      params.require(:study_tip).permit(:title, :detail, :image)
    end

end

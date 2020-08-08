class CreateStudyTips < ActiveRecord::Migration[5.2]
  def change
    create_table :study_tips do |t|
      t.string :title, null: false
      t.text :detail, null: false
      t.text :image, limit: 4294967295
      t.timestamps
    end
  end
end

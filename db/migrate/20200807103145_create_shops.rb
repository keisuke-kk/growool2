class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.text :detail, null: false
      t.text :aicon_image, limit: 4294967295
      t.string :tel
      t.string :address
      t.string :url
      t.timestamps
    end
  end
end

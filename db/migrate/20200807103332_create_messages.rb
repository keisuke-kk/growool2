class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :text, null: false
      t.text :image, limit: 4294967295
      t.timestamps
    end
  end
end

class AddColumnTitles < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :email, :string, unique: true, null: false, default: ""
  end
end

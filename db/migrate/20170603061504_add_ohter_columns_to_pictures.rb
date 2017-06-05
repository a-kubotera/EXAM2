class AddOhterColumnsToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :name, :string
    add_column :pictures, :title, :string
    add_column :pictures, :content, :string
    add_column :pictures, :user_id, :integer
  end
end

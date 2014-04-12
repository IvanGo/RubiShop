class AddColumnsCb < ActiveRecord::Migration
  def change
  	add_column :crossbows, :mainphoto_file_name, :string 
    add_column :crossbows, :mainphoto_content_type, :string 
    add_column :crossbows, :mainphoto_file_size, :integer
    add_column :bows, :mainphoto_file_name, :string 
    add_column :bows, :mainphoto_content_type, :string 
    add_column :bows, :mainphoto_file_size, :integer
  end
end

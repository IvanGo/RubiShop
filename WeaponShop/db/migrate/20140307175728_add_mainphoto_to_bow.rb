class AddMainphotoToBow < ActiveRecord::Migration
  def change
    add_column :bows, :mainphoto, :string
  end
end

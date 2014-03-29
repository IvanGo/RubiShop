class AddMainphotoToCrossbow < ActiveRecord::Migration
  def change
    add_column :crossbows, :mainphoto, :string
  end
end

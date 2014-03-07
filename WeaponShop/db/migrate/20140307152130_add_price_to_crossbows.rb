class AddPriceToCrossbows < ActiveRecord::Migration
  def change
    add_column :crossbows, :price, :float
  end
end

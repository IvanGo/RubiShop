class AddPriceToBows < ActiveRecord::Migration
  def change
    add_column :bows, :price, :float
  end
end

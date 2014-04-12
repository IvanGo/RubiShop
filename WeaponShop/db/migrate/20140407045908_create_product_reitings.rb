class CreateProductReitings < ActiveRecord::Migration
  def change
    create_table :product_reitings do |t|
      t.integer :bow_id
      t.integer :crossbow_id
      t.integer :user_id
      t.integer :raiting

      t.timestamps
    end
  end
end

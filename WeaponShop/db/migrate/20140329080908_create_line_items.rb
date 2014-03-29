class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :bow_id
      t.integer :crossbow_id
      t.integer :cart_id

      t.timestamps
    end
  end
end

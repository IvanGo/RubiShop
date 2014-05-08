class CreateRaitings < ActiveRecord::Migration
  def change
    create_table :raitings do |t|
      t.integer :bow_id
      t.integer :crossbow_id
      t.integer :raiting

      t.timestamps
    end
  end
end

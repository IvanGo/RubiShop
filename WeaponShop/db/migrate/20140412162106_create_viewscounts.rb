class CreateViewscounts < ActiveRecord::Migration
  def change
    create_table :viewscounts do |t|
      t.integer :bow_id
      t.integer :crossbow_id
      t.integer :count

      t.timestamps
    end
  end
end

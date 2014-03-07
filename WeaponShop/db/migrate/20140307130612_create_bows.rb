class CreateBows < ActiveRecord::Migration
  def change
    create_table :bows do |t|
      t.string :name
      t.text :description
      t.float :tension_force
      t.float :lenght
      t.float :tensionlenght
      t.float :arrow_start_speed
      t.float :weight
      t.float :bow_base
      t.string :producer
      t.integer :bowtype_id

      t.timestamps
    end
  end
end

class CreateCrossbows < ActiveRecord::Migration
  def change
    create_table :crossbows do |t|
      t.string :name
      t.text :description
      t.float :tension_force
      t.float :stroke_bowstring
      t.float :shoulders_lenght
      t.float :arrow_start_speed
      t.float :weight
      t.string :dimensions
      t.float :bolt_lenght
      t.string :producer
      t.integer :crossbowtype_id

      t.timestamps
    end
  end
end

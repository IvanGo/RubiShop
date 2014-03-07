class CreateBowtypes < ActiveRecord::Migration
  def change
    create_table :bowtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end

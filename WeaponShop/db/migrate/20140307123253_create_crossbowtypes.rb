class CreateCrossbowtypes < ActiveRecord::Migration
  def change
    create_table :crossbowtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end

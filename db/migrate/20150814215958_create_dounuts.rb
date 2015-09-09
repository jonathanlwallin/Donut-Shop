class CreateDounuts < ActiveRecord::Migration
  def change
    create_table :dounuts do |t|
      t.string :name
      t.text :topping
      t.text :topping
      t.integer :cost
      t.string :image

      t.timestamps null: false
    end
  end
end

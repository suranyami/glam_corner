class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.string :name
      t.string :code
      t.integer :rental_period
      t.integer :hire
      t.integer :rrp
      t.string :colour
      t.string :main_fabric
      t.text :description

      t.timestamps null: false
    end
  end
end

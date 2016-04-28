class CreateDemo < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :name
      t.integer :price
      t.text :about
    end
  end
end
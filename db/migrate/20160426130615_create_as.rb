class CreateAs < ActiveRecord::Migration
  def change
    create_table :as do |t|
      t.string :name
      t.integer :price

      t.timestamps null: false
    end
  end
end

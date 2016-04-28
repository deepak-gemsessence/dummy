class AddIndexToProduct < ActiveRecord::Migration
  def change
    add_column :products, :age, :string
    add_index :products, :age
  end
end

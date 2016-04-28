class AddLocationToProduct < ActiveRecord::Migration
  def change
    add_column :products, :state, :string
    add_column :products, :country, :string
    add_column :products, :world, :string
  end
end

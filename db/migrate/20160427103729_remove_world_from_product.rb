class RemoveWorldFromProduct < ActiveRecord::Migration
  def change
    remove_column :products, :world, :string
  end
end

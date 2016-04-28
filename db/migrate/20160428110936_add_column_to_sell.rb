class AddColumnToSell < ActiveRecord::Migration
  def change
    add_column :sells, :post, :integer
  end
end

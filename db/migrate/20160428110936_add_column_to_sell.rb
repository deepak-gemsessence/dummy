class AddColumnToSell < ActiveRecord::Migration
  def change
    add_column :sells, :post, :string
  end
end

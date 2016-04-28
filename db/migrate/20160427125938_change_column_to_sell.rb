class ChangeColumnToSell < ActiveRecord::Migration
  def change
    change_table :sells do |t|
      # t.remove :name # not reversible but happen only if main table rollback
      t.rename :city, :address
      t.string :hello
      t.index :hello

      # change_column :sells, :city, :text
      # or
      # t.change :approved, :text # not reversible

    end

    change_column_null :sells, :price, false
    # change_column_default :sells, :approved, false

  end
end

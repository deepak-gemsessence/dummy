class AddSellRefToDemo < ActiveRecord::Migration
  def change
    add_reference :demos, :sell, index: true, foreign_key: true
  end
end

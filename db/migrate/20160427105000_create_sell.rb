class CreateSell < ActiveRecord::Migration
  def change

    create_table :sells do |t|
      t.string :name,:null => false, :default => false
      t.string :city
      t.string :approved
      t.integer :price, limit: 2
      t.integer :mobile

      # not workoing
      # t.decimal :precentage, precision: 4, scale: 2


    end
    create_join_table :demos, :sells, table_name: :categorization

  end
end
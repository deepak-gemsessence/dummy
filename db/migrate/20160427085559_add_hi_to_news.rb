class AddHiToNews < ActiveRecord::Migration
  def change
    add_column :news, :any, :string
  end
end

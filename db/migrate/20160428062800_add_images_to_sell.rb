class AddImagesToSell < ActiveRecord::Migration

  def up
    change_table :sells do |t|
      t.references :imageable, :polymorphic => true
    end
  end

  def down
    change_table :sells do |t|
      t.remove_references :imageable, :polymorphic => true
    end
  end

end

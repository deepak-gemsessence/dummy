class CreateJoinTableDemoSell < ActiveRecord::Migration
  def change
    create_join_table :demos, :sells do |t|
      # t.index [:demo_id, :sell_id]
      # t.index [:sell_id, :demo_id]
    end
  end
end

class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|

      t.string :zipcode

      t.timestamps null: false
    end
    reversible do |dir|
          dir.up do
            # add a CHECK constraint
            execute <<-SQL
              ALTER TABLE distributors
                ADD COLUMN total int;
            SQL
          end
          dir.down do
            execute <<-SQL
              ALTER TABLE distributors
                DROP COLUMN total;
            SQL
          end
        end

        add_column :sells, :home_page_url, :string
        rename_column :sells, :approved, :status

  end
end

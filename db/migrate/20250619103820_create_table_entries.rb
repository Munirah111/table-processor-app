class CreateTableEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :table_entries do |t|
      t.string :identifier
      t.float :value

      t.timestamps
    end
  end
end

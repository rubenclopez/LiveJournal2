class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :body

      t.integer :journal_id

      t.timestamps
    end
  end
end

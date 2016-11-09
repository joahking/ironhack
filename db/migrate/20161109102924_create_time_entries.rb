class CreateTimeEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :time_entries do |t|
      t.integer :hours
      t.integer :minutes
      t.text :comment
      t.datetime :date
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end

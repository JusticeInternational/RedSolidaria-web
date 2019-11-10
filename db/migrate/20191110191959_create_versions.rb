class CreateVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :versions do |t|
      t.integer :major
      t.integer :minor
      t.integer :patch
      t.string :value
      t.datetime :created

      t.timestamps
    end
  end
end

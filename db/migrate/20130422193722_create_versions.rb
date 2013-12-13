class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :name
      t.date :release_date
      t.references :parent, index: true

      t.timestamps
    end
  end
end

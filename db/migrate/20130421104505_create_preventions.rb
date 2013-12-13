class CreatePreventions < ActiveRecord::Migration
  def change
    create_table :preventions do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateChanges < ActiveRecord::Migration
  def change
    create_table :changes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class CreateImprovements < ActiveRecord::Migration
  def change
    create_table :improvements do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class AddStateRefToItems < ActiveRecord::Migration
  def change
    add_reference :items, :state, index: true
    add_foreign_key :items, :states
  end
end

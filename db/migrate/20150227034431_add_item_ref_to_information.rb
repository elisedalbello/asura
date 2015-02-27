class AddItemRefToInformation < ActiveRecord::Migration
  def change
    add_reference :information, :item, index: true
    add_foreign_key :information, :items
  end
end

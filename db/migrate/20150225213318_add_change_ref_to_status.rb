class AddChangeRefToStatus < ActiveRecord::Migration
  def change
    add_reference :statuses, :change, index: true
    add_foreign_key :statuses, :changes
  end
end

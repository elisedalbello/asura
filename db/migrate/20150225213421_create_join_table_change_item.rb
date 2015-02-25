class CreateJoinTableChangeItem < ActiveRecord::Migration
  def change
    create_join_table :changes, :items do |t|
      # t.index [:change_id, :item_id]
      # t.index [:item_id, :change_id]
    end
  end
end

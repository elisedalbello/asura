class CreateJoinTableInformationItem < ActiveRecord::Migration
  def change
    create_join_table :information, :items do |t|
      # t.index [:information_id, :item_id]
      # t.index [:item_id, :information_id]
    end
  end
end

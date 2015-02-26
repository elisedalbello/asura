class CreateJoinTableImprovementItem < ActiveRecord::Migration
  def change
    create_join_table :improvements, :items do |t|
      # t.index [:improvement_id, :item_id]
      # t.index [:item_id, :improvement_id]
    end
  end
end

class AddImprovementRefToStates < ActiveRecord::Migration
  def change
    add_reference :states, :improvement, index: true
    add_foreign_key :states, :improvements
  end
end

class AddProjectRefToImprovement < ActiveRecord::Migration
  def change
    add_reference :improvements, :product, index: true
  end
end

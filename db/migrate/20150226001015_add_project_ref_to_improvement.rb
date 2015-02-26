class AddProjectRefToImprovement < ActiveRecord::Migration
  def change
    add_column :improvements, :project, :string
    add_column :improvements, :improvement, :string
  end
end

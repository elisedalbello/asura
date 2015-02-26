class AddProjectRefToImprovements < ActiveRecord::Migration
  def change
    add_reference :improvements, :project, index: true
    add_foreign_key :improvements, :projects
  end
end

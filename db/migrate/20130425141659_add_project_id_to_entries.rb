class AddProjectIdToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :project_id, :integer
    add_index :entries, :project_id
  end
end

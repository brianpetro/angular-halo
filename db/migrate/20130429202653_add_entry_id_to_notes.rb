class AddEntryIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :entry_id, :integer
  end
end

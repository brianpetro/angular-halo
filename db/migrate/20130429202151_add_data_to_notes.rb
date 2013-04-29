class AddDataToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :data, :hstore
  end
end

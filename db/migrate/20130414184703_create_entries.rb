class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.hstore :data

      t.timestamps
    end
  end
end

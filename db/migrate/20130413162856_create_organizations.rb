class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.hstore :data

      t.timestamps
    end
  end
end

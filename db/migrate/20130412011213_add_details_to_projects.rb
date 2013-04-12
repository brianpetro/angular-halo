class AddDetailsToProjects < ActiveRecord::Migration

  execute 'CREATE EXTENSION hstore'


  def change
    add_column :projects, :details, :hstore
  end
end

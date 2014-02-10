class AddLatestToImports < ActiveRecord::Migration
  def change
  	add_column :imports, :latest, :boolean
  end
end

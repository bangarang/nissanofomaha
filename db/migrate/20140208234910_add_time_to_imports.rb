class AddTimeToImports < ActiveRecord::Migration
  def change
  	add_column :imports, :import_time, :datetime
  end
end

class AddCurrentToImportsReal < ActiveRecord::Migration
  def change
  	remove_column :vehicles, :current, :datetime
  	add_column :imports, :current, :datetime
  end
end

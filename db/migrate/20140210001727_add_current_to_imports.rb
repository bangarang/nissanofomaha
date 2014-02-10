class AddCurrentToImports < ActiveRecord::Migration
  def change
  	add_column :vehicles, :current, :datetime
  end
end

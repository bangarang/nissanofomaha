class ChangePriceToString < ActiveRecord::Migration
  def change
  	change_column :specials, :price, :string
  end
end

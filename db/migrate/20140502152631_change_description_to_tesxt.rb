class ChangeDescriptionToTesxt < ActiveRecord::Migration
  def change
  	change_column :specials, :description, :text
  end
end

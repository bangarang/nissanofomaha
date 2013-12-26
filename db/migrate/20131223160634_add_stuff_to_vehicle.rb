class AddStuffToVehicle < ActiveRecord::Migration
  def change
  	add_column :vehicles, :dealerid, :integer
		add_column :vehicles, :vin, :string
		add_column :vehicles, :stock_, :string
		add_column :vehicles, :newused, :string
		add_column :vehicles, :model_number, :string
		add_column :vehicles, :body, :string
		add_column :vehicles, :transmission, :string
		add_column :vehicles, :series, :string
		add_column :vehicles, :body_door_ct, :integer
		add_column :vehicles, :odometer, :integer
		add_column :vehicles, :engine_cylinder_ct, :integer
		add_column :vehicles, :engine_displacement, :string
		add_column :vehicles, :drivetrain_desc, :string
		add_column :vehicles, :colour, :string
		add_column :vehicles, :interior_color, :string
		add_column :vehicles, :invoice, :integer
		add_column :vehicles, :msrp, :integer
		add_column :vehicles, :book_value, :integer
		add_column :vehicles, :price, :integer
		add_column :vehicles, :inventory_date, :string
		add_column :vehicles, :certified, :string
		add_column :vehicles, :description, :string
		add_column :vehicles, :features, :string
		add_column :vehicles, :photo_url_list, :string
		add_column :vehicles, :city_mpg, :integer
		add_column :vehicles, :highway_mpg, :integer
		add_column :vehicles, :photos_last_modified_date, :string
		add_column :vehicles, :status_code, :string
		add_column :vehicles, :cost, :integer
		add_column :vehicles, :series_detail, :string
		add_column :vehicles, :inspection_checklist_, :string
		add_column :vehicles, :video_url, :string
		add_column :vehicles, :video_player_url, :string
		add_column :vehicles, :rw, :string
  end
end

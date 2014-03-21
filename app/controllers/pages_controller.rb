class PagesController < ApplicationController
	before_action :authorize, only: [:full_inventory, :items]
	def home
	end

	def full_inventory
	end

	def items
		text = File.read('public/inventory.txt').gsub(/\"/,'')
		@things = []
		CSV.parse(text, { :headers => true, header_converters: :symbol, :col_sep => "\t" }) do |row|
			@things.push(row.to_hash)
		end
		render :json => @things 
	end

	def the_inventory
    @vehicles = Vehicle.where(newused: 'N')
    render :json => @vehicles
  end
end
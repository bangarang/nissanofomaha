class PartsOrdersController < ApplicationController
  before_action :set_parts_order, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:new, :create]
  # GET /parts_orders
  # GET /parts_orders.json
  def index
    @parts_orders = PartsOrder.all
  end

  # GET /parts_orders/1
  # GET /parts_orders/1.json
  def show
  end

  # GET /parts_orders/new
  def new
    @parts_order = PartsOrder.new
  end

  # GET /parts_orders/1/edit
  def edit
  end

  # POST /parts_orders
  # POST /parts_orders.json
  def create
    @parts_order = PartsOrder.new(parts_order_params)

    respond_to do |format|
      if @parts_order.save
        PartsMailer.order(@parts_order).deliver
        format.html { redirect_to root_url, notice: 'Parts order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @parts_order }
      else
        format.html { render action: 'new' }
        format.json { render json: @parts_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parts_orders/1
  # PATCH/PUT /parts_orders/1.json
  def update
    respond_to do |format|
      if @parts_order.update(parts_order_params)
        format.html { redirect_to root_url, notice: 'Parts order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parts_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parts_orders/1
  # DELETE /parts_orders/1.json
  def destroy
    @parts_order.destroy
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parts_order
      @parts_order = PartsOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parts_order_params
      params.require(:parts_order).permit(:name, :phone, :zip, :email, :year, :make, :model, :vin, :comments)
    end
end

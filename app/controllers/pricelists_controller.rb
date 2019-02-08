class PricelistsController < ApplicationController
  before_action :set_pricelist, only: [:show, :edit, :update, :destroy]

  # GET /pricelists
  # GET /pricelists.json
  def index
    @pricelists = Pricelist.all
  end

  # GET /pricelists/1
  # GET /pricelists/1.json
  def show
  end

  # GET /pricelists/new
  def new
    @pricelist = Pricelist.new
    @couriers = Courier.all
  end

  # GET /pricelists/1/edit
  def edit
    @courier = Pricelist.find(params[:id]).courier_id
  end

  # POST /pricelists
  # POST /pricelists.json
  def create
    @pricelist = Pricelist.new(pricelist_params)
    @pricelist.user_id = current_user.id
    respond_to do |format|
      if @pricelist.save
        format.html { redirect_to action: :index }
        format.json { render :index, status: :created, location: @pricelist }
      else
        format.html { render :new }
        format.json { render json: @pricelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pricelists/1
  # PATCH/PUT /pricelists/1.json
  def update
    respond_to do |format|
      if @pricelist.update(pricelist_params)
        format.html { redirect_to action: :index }
        format.json { render :index, status: :ok, location: @pricelist }
      else
        format.html { render :edit }
        format.json { render json: @pricelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricelists/1
  # DELETE /pricelists/1.json
  def destroy
    @pricelist.destroy
    respond_to do |format|
      format.html { redirect_to pricelists_url, notice: 'Pricelist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricelist
      @pricelist = Pricelist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pricelist_params
      params.require(:pricelist).permit(:name, :note, :user_id, :courier_id, :price)
    end
end

class ChusController < ApplicationController
  before_action :set_chu, only: [:show, :new, :destroy, :edit, :update]
  before_action :authenticate_user!

  respond_to :html

  def index
    @chu = Chu.new
  end

  # GET /chus/1
  # GET /chus/1.json
  def show
  end

  # GET /chus/new
  def new
    @chu = Chu.new
    respond_with(@chu)
  end

  # GET /chus/1/edit
  def edit
  end

  # POST /chus
  # POST /chus.json
  def create
    @chu = Chu.new(chu_params)

    respond_to do |format|
      if @chu.save
        format.html { redirect_to @chu }
        format.json { render :show, status: :created, location: @chu }
      else
        format.html { render :new }
        format.json { render json: @chu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chus/1
  # PATCH/PUT /chus/1.json
  def update
    respond_to do |format|
      if @chu.update(chu_params)
        format.html { redirect_to @chu }
        format.json { render :show, status: :ok, location: @chu }
      else
        format.html { render :edit }
        format.json { render json: @chu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chus/1
  # DELETE /chus/1.json
  def destroy
    @chu.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Chu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chu
      @chu = Chu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chu_params
      params.require(:chu).permit(:tagline, :list_type, :available_date, :latitude, :longitude, :address, :base, :description, :bedroom, :bathroom, :price, :sec_deposit, :cleaning_fee, :smoking, :pet, :additional_info, :image1, :image2, :image3, :image4, :image5, :user_id)
    end
end

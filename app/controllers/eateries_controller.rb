class EateriesController < ApplicationController
  before_action :set_eatery, only: [:show, :edit, :update, :destroy]

  # GET /eateries
  # GET /eateries.json
  def index
    @eateries = Eatery.all
  end

  # GET /eateries/1
  # GET /eateries/1.json
  def show
  end

  # GET /eateries/new
  def new
    @eatery = Eatery.new
  end

  # GET /eateries/1/edit
  def edit
  end

  # POST /eateries
  # POST /eateries.json
  def create
    @eatery = Eatery.new(eatery_params)

    respond_to do |format|
      if @eatery.save
        format.html { redirect_to @eatery, notice: 'Eatery was successfully created.' }
        format.json { render :show, status: :created, location: @eatery }
      else
        format.html { render :new }
        format.json { render json: @eatery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eateries/1
  # PATCH/PUT /eateries/1.json
  def update
    respond_to do |format|
      if @eatery.update(eatery_params)
        format.html { redirect_to @eatery, notice: 'Eatery was successfully updated.' }
        format.json { render :show, status: :ok, location: @eatery }
      else
        format.html { render :edit }
        format.json { render json: @eatery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eateries/1
  # DELETE /eateries/1.json
  def destroy
    @eatery.destroy
    respond_to do |format|
      format.html { redirect_to eateries_url, notice: 'Eatery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eatery
      @eatery = Eatery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eatery_params
      params.require(:eatery).permit(:name, :address, :lat_long, :phone_num, :hours, :image_url, :website, :cost, :rating, :type_food, :drive_thru, :delivery, :market, :reviews, :pop_items)
    end
end

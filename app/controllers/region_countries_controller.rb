class RegionCountriesController < ApplicationController
  before_action :set_region_country, only: [:show, :edit, :update, :destroy]

  # GET /region_countries
  # GET /region_countries.json
  def index
    @region_countries = RegionCountry.all
    

  end

  # GET /region_countries/1
  # GET /region_countries/1.json
  def show
  end

  # GET /region_countries/new
  def new
    @region_country = RegionCountry.new
  end

  # GET /region_countries/1/edit
  def edit
  end

  # POST /region_countries
  # POST /region_countries.json
  def create
    @region_country = RegionCountry.new(region_country_params)

    respond_to do |format|
      if @region_country.save
        format.html { redirect_to @region_country, notice: 'Region country was successfully created.' }
        format.json { render :show, status: :created, location: @region_country }
      else
        format.html { render :new }
        format.json { render json: @region_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /region_countries/1
  # PATCH/PUT /region_countries/1.json
  def update
    respond_to do |format|
      if @region_country.update(region_country_params)
        format.html { redirect_to @region_country, notice: 'Region country was successfully updated.' }
        format.json { render :show, status: :ok, location: @region_country }
      else
        format.html { render :edit }
        format.json { render json: @region_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /region_countries/1
  # DELETE /region_countries/1.json
  def destroy
    @region_country.destroy
    respond_to do |format|
      format.html { redirect_to region_countries_url, notice: 'Region country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region_country
      @region_country = RegionCountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_country_params
      params.require(:region_country).permit(:region_id, :country_id)
    end
end

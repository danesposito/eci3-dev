class RegionSourcesController < ApplicationController
  before_action :set_region_source, only: [:show, :edit, :update, :destroy]

  # GET /region_sources
  # GET /region_sources.json
  def index
    @region_sources = RegionSource.all
  end

  # GET /region_sources/1
  # GET /region_sources/1.json
  def show
  end

  # GET /region_sources/new
  def new
    @region_source = RegionSource.new
  end

  # GET /region_sources/1/edit
  def edit
    @region_source = RegionSource.find(params[:id])
  end

  # POST /region_sources
  # POST /region_sources.json
  def create
    @region_source = RegionSource.new(region_source_params)

    respond_to do |format|
      if @region_source.save
        format.html { redirect_to @region_source, notice: 'Region source was successfully created.' }
        format.json { render :show, status: :created, location: @region_source }
      else
        format.html { render :new }
        format.json { render json: @region_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /region_sources/1
  # PATCH/PUT /region_sources/1.json
  def update
    respond_to do |format|
      if @region_source.update(region_source_params)
        format.html { redirect_to @region_source, notice: 'Region source was successfully updated.' }
        format.json { render :show, status: :ok, location: @region_source }
      else
        format.html { render :edit }
        format.json { render json: @region_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /region_sources/1
  # DELETE /region_sources/1.json
  def destroy
    @region_source.destroy
    respond_to do |format|
      format.html { redirect_to region_sources_url, notice: 'Region source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region_source
      @region_source = RegionSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_source_params
      params.require(:region_source).permit(:name, :description, :website, region_groups_attributes: [:id, :name, :description])
    end
end

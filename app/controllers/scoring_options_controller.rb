class ScoringOptionsController < ApplicationController
  before_action :set_scoring_option, only: [:show, :edit, :update, :destroy]

  # GET /scoring_options
  # GET /scoring_options.json
  def index
    @scoring_options = ScoringOption.all
  end

  # GET /scoring_options/1
  # GET /scoring_options/1.json
  def show
  end

  # GET /scoring_options/new
  def new
    @scoring_option = ScoringOption.new
  end

  # GET /scoring_options/1/edit
  def edit
  end

  # POST /scoring_options
  # POST /scoring_options.json
  def create
    @scoring_option = ScoringOption.new(scoring_option_params)

    respond_to do |format|
      if @scoring_option.save
        format.html { redirect_to @scoring_option, notice: 'Scoring option was successfully created.' }
        format.json { render :show, status: :created, location: @scoring_option }
      else
        format.html { render :new }
        format.json { render json: @scoring_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scoring_options/1
  # PATCH/PUT /scoring_options/1.json
  def update
    respond_to do |format|
      if @scoring_option.update(scoring_option_params)
        format.html { redirect_to @scoring_option, notice: 'Scoring option was successfully updated.' }
        format.json { render :show, status: :ok, location: @scoring_option }
      else
        format.html { render :edit }
        format.json { render json: @scoring_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scoring_options/1
  # DELETE /scoring_options/1.json
  def destroy
    @scoring_option.destroy
    respond_to do |format|
      format.html { redirect_to scoring_options_url, notice: 'Scoring option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scoring_option
      @scoring_option = ScoringOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scoring_option_params
      params.require(:scoring_option).permit(:indicator_id, :description, :value, :not_applicable)
    end
end

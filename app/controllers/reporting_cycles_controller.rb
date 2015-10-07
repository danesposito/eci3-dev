class ReportingCyclesController < ApplicationController
  before_action :set_reporting_cycle, only: [:show, :edit, :update, :destroy]

  # GET /reporting_cycles
  # GET /reporting_cycles.json
  def index
    @reporting_cycles = ReportingCycle.all
  end

  # GET /reporting_cycles/1
  # GET /reporting_cycles/1.json
  def show
  end

  # GET /reporting_cycles/new
  def new
    @reporting_cycle = ReportingCycle.new
  end

  # GET /reporting_cycles/1/edit
  def edit
  end

  # POST /reporting_cycles
  # POST /reporting_cycles.json
  def create
    @reporting_cycle = ReportingCycle.new(reporting_cycle_params)

    respond_to do |format|
      if @reporting_cycle.save
        format.html { redirect_to @reporting_cycle, notice: 'Reporting cycle was successfully created.' }
        format.json { render :show, status: :created, location: @reporting_cycle }
      else
        format.html { render :new }
        format.json { render json: @reporting_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reporting_cycles/1
  # PATCH/PUT /reporting_cycles/1.json
  def update
    respond_to do |format|
      if @reporting_cycle.update(reporting_cycle_params)
        format.html { redirect_to @reporting_cycle, notice: 'Reporting cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @reporting_cycle }
      else
        format.html { render :edit }
        format.json { render json: @reporting_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reporting_cycles/1
  # DELETE /reporting_cycles/1.json
  def destroy
    @reporting_cycle.destroy
    respond_to do |format|
      format.html { redirect_to reporting_cycles_url, notice: 'Reporting cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reporting_cycle
      @reporting_cycle = ReportingCycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reporting_cycle_params
      params.require(:reporting_cycle).permit(:convention_id, :date, :name, :description)
    end
end

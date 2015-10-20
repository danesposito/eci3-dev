class ConventionMembershipsController < ApplicationController
  before_action :set_convention_membership, only: [:show, :edit, :update, :destroy]

  # GET /convention_memberships
  # GET /convention_memberships.json
  def index
    @convention_memberships = ConventionMembership.all
  end

  # GET /convention_memberships/1
  # GET /convention_memberships/1.json
  def show
  end

  # GET /convention_memberships/new
  def new
    @convention_membership = ConventionMembership.new
  end

  # GET /convention_memberships/1/edit
  def edit
  end

  # POST /convention_memberships
  # POST /convention_memberships.json
  def create
    @convention_membership = ConventionMembership.new(convention_membership_params)

    respond_to do |format|
      if @convention_membership.save
        format.html { redirect_to @convention_membership, notice: 'Convention membership was successfully created.' }
        format.json { render :show, status: :created, location: @convention_membership }
      else
        format.html { render :new }
        format.json { render json: @convention_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /convention_memberships/1
  # PATCH/PUT /convention_memberships/1.json
  def update
    respond_to do |format|
      if @convention_membership.update(convention_membership_params)
        format.html { redirect_to @convention_membership, notice: 'Convention membership was successfully updated.' }
        format.json { render :show, status: :ok, location: @convention_membership }
      else
        format.html { render :edit }
        format.json { render json: @convention_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /convention_memberships/1
  # DELETE /convention_memberships/1.json
  def destroy
    @convention_membership.destroy
    respond_to do |format|
      format.html { redirect_to convention_memberships_url, notice: 'Convention membership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convention_membership
      @convention_membership = ConventionMembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def convention_membership_params
      params.require(:convention_membership).permit(:convention_id, :country_id, :membership_type_id, :date)
    end
end

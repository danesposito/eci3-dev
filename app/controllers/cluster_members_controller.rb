class ClusterMembersController < ApplicationController
  before_action :set_cluster_member, only: [:show, :edit, :update, :destroy]

  # GET /cluster_members
  # GET /cluster_members.json
  def index
    @cluster_members = ClusterMember.all
  end

  # GET /cluster_members/1
  # GET /cluster_members/1.json
  def show
  end

  # GET /cluster_members/new
  def new
    @cluster_member = ClusterMember.new
  end

  # GET /cluster_members/1/edit
  def edit
  end

  # POST /cluster_members
  # POST /cluster_members.json
  def create
    @cluster_member = ClusterMember.new(cluster_member_params)

    respond_to do |format|
      if @cluster_member.save
        format.html { redirect_to @cluster_member, notice: 'Cluster member was successfully created.' }
        format.json { render :show, status: :created, location: @cluster_member }
      else
        format.html { render :new }
        format.json { render json: @cluster_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cluster_members/1
  # PATCH/PUT /cluster_members/1.json
  def update
    respond_to do |format|
      if @cluster_member.update(cluster_member_params)
        format.html { redirect_to @cluster_member, notice: 'Cluster member was successfully updated.' }
        format.json { render :show, status: :ok, location: @cluster_member }
      else
        format.html { render :edit }
        format.json { render json: @cluster_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cluster_members/1
  # DELETE /cluster_members/1.json
  def destroy
    @cluster_member.destroy
    respond_to do |format|
      format.html { redirect_to cluster_members_url, notice: 'Cluster member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cluster_member
      @cluster_member = ClusterMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cluster_member_params
      params.require(:cluster_member).permit(:cluster_id, :convention_id)
    end
end

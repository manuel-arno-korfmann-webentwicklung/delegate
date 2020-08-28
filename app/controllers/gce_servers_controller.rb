class GceServersController < ApplicationController
  before_action :set_gce_server, only: [:show, :edit, :update, :destroy]

  # GET /gce_servers
  # GET /gce_servers.json
  def index
    @gce_servers = GceServer.all
  end

  # GET /gce_servers/1
  # GET /gce_servers/1.json
  def show
  end

  # GET /gce_servers/new
  def new
    @gce_server = GceServer.new
  end

  # GET /gce_servers/1/edit
  def edit
  end

  # POST /gce_servers
  # POST /gce_servers.json
  def create
    @gce_server = GceServer.new(gce_server_params)

    respond_to do |format|
      if @gce_server.save
        format.html { redirect_to @gce_server, notice: 'Gce server was successfully created.' }
        format.json { render :show, status: :created, location: @gce_server }
      else
        format.html { render :new }
        format.json { render json: @gce_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gce_servers/1
  # PATCH/PUT /gce_servers/1.json
  def update
    respond_to do |format|
      if @gce_server.update(gce_server_params)
        format.html { redirect_to @gce_server, notice: 'Gce server was successfully updated.' }
        format.json { render :show, status: :ok, location: @gce_server }
      else
        format.html { render :edit }
        format.json { render json: @gce_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gce_servers/1
  # DELETE /gce_servers/1.json
  def destroy
    @gce_server.destroy
    respond_to do |format|
      format.html { redirect_to gce_servers_url, notice: 'Gce server was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gce_server
      @gce_server = GceServer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gce_server_params
      params.require(:gce_server).permit(:gce_server_associable_id, :gce_server_associable_type, :identity, :zone)
    end
end

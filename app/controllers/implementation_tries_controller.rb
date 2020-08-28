class ImplementationTriesController < ApplicationController
  before_action :set_implementation_try, only: [:show, :edit, :update, :destroy]

  # GET /implementation_tries
  # GET /implementation_tries.json
  def index
    @implementation_tries = ImplementationTry.all
  end

  # GET /implementation_tries/1
  # GET /implementation_tries/1.json
  def show
  end

  # GET /implementation_tries/new
  def new
    @implementation_try = ImplementationTry.new
  end

  # GET /implementation_tries/1/edit
  def edit
  end

  # POST /implementation_tries
  # POST /implementation_tries.json
  def create
    @implementation_try = ImplementationTry.new(implementation_try_params)

    respond_to do |format|
      if @implementation_try.save
        format.html { redirect_to @implementation_try, notice: 'Implementation try was successfully created.' }
        format.json { render :show, status: :created, location: @implementation_try }
      else
        format.html { render :new }
        format.json { render json: @implementation_try.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /implementation_tries/1
  # PATCH/PUT /implementation_tries/1.json
  def update
    respond_to do |format|
      if @implementation_try.update(implementation_try_params)
        format.html { redirect_to @implementation_try, notice: 'Implementation try was successfully updated.' }
        format.json { render :show, status: :ok, location: @implementation_try }
      else
        format.html { render :edit }
        format.json { render json: @implementation_try.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /implementation_tries/1
  # DELETE /implementation_tries/1.json
  def destroy
    @implementation_try.destroy
    respond_to do |format|
      format.html { redirect_to implementation_tries_url, notice: 'Implementation try was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_implementation_try
      @implementation_try = ImplementationTry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def implementation_try_params
      params.require(:implementation_try).permit(:change_request_step_id, :username_of_implementor)
    end
end

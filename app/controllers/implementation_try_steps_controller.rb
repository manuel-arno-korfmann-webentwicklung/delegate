class ImplementationTryStepsController < ApplicationController
  before_action :set_implementation_try_step, only: [:show, :edit, :update, :destroy]

  # GET /implementation_try_steps
  # GET /implementation_try_steps.json
  def index
    @implementation_try_steps = ImplementationTryStep.all
  end

  # GET /implementation_try_steps/1
  # GET /implementation_try_steps/1.json
  def show
  end

  # GET /implementation_try_steps/new
  def new
    @implementation_try_step = ImplementationTryStep.new
  end

  # GET /implementation_try_steps/1/edit
  def edit
  end

  # POST /implementation_try_steps
  # POST /implementation_try_steps.json
  def create
    @implementation_try_step = ImplementationTryStep.new(implementation_try_step_params)

    respond_to do |format|
      if @implementation_try_step.save
        format.html { redirect_to @implementation_try_step, notice: 'Implementation try step was successfully created.' }
        format.json { render :show, status: :created, location: @implementation_try_step }
      else
        format.html { render :new }
        format.json { render json: @implementation_try_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /implementation_try_steps/1
  # PATCH/PUT /implementation_try_steps/1.json
  def update
    respond_to do |format|
      if @implementation_try_step.update(implementation_try_step_params)
        format.html { redirect_to @implementation_try_step, notice: 'Implementation try step was successfully updated.' }
        format.json { render :show, status: :ok, location: @implementation_try_step }
      else
        format.html { render :edit }
        format.json { render json: @implementation_try_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /implementation_try_steps/1
  # DELETE /implementation_try_steps/1.json
  def destroy
    @implementation_try_step.destroy
    respond_to do |format|
      format.html { redirect_to implementation_try_steps_url, notice: 'Implementation try step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_implementation_try_step
      @implementation_try_step = ImplementationTryStep.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def implementation_try_step_params
      params.require(:implementation_try_step).permit(:change_request_step_try_id, :data, :sort_integer)
    end
end

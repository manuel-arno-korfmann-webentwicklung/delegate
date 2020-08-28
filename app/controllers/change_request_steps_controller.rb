class ChangeRequestStepsController < ApplicationController
  before_action :set_change_request_step, only: [:show, :edit, :update, :destroy]

  # GET /change_request_steps
  # GET /change_request_steps.json
  def index
    @change_request_steps = ChangeRequestStep.all
  end

  # GET /change_request_steps/1
  # GET /change_request_steps/1.json
  def show
  end

  # GET /change_request_steps/new
  def new
    @change_request_step = ChangeRequestStep.new
  end

  # GET /change_request_steps/1/edit
  def edit
  end

  # POST /change_request_steps
  # POST /change_request_steps.json
  def create
    @change_request_step = ChangeRequestStep.new(change_request_step_params)

    respond_to do |format|
      if @change_request_step.save
        format.html { redirect_to @change_request_step, notice: 'Change request step was successfully created.' }
        format.json { render :show, status: :created, location: @change_request_step }
      else
        format.html { render :new }
        format.json { render json: @change_request_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_request_steps/1
  # PATCH/PUT /change_request_steps/1.json
  def update
    respond_to do |format|
      if @change_request_step.update(change_request_step_params)
        format.html { redirect_to @change_request_step, notice: 'Change request step was successfully updated.' }
        format.json { render :show, status: :ok, location: @change_request_step }
      else
        format.html { render :edit }
        format.json { render json: @change_request_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_request_steps/1
  # DELETE /change_request_steps/1.json
  def destroy
    @change_request_step.destroy
    respond_to do |format|
      format.html { redirect_to change_request_steps_url, notice: 'Change request step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_request_step
      @change_request_step = ChangeRequestStep.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def change_request_step_params
      params.require(:change_request_step).permit(:change_request_id, :file_url, :todo)
    end
end

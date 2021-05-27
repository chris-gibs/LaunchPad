class LaunchesController < ApplicationController
  before_action :set_launch, only: %i[ show edit update destroy ]

  # GET /launches or /launches.json
  def index
    @launches = Launch.all
  end

  # GET /launches/1 or /launches/1.json
  def show
  end

  # GET /launches/new
  def new
    @launch = Launch.new
  end

  # GET /launches/1/edit
  def edit
  end

  # POST /launches or /launches.json
  def create
    @launch = Launch.new(launch_params)

    respond_to do |format|
      if @launch.save
        format.html { redirect_to @launch, notice: "Launch was successfully created." }
        format.json { render :show, status: :created, location: @launch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @launch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /launches/1 or /launches/1.json
  def update
    respond_to do |format|
      if @launch.update(launch_params)
        format.html { redirect_to @launch, notice: "Launch was successfully updated." }
        format.json { render :show, status: :ok, location: @launch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @launch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /launches/1 or /launches/1.json
  def destroy
    @launch.destroy
    respond_to do |format|
      format.html { redirect_to launches_url, notice: "Launch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_launch
      @launch = Launch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def launch_params
      params.require(:launch).permit(:type, :price, :launch_date, :organisation_id)
    end
end

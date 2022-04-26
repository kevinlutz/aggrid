class GridsController < ApplicationController
  before_action :set_grid, only: %i[ show edit update destroy ]

  def common
    @make = Faker::Vehicle.make
    @model = Faker::Vehicle.model
    @vin = Faker::Vehicle.vin
    @color = Faker::Vehicle.color
    @drive_type = Faker::Vehicle.drive_type
    @fuel_type = Faker::Vehicle.fuel_type
    @transmission = Faker::Vehicle.transmission
    @mileage = Faker::Vehicle.mileage
    @engine_size = Faker::Vehicle.engine_size
  end

  # GET /grids or /grids.json
  def index
    @grids = Grid.all
  end

  def inventory

  end

  # GET /grids/1 or /grids/1.json
  def show
    @grid = Grid.find(params[:id])
  end

  # GET /grids/new
  def new
    @grid = Grid.new
  end

  # GET /grids/1/edit
  def edit
  end

  # POST /grids or /grids.json
  def create
    @grid = Grid.new(grid_params)

    respond_to do |format|
      if @grid.save
        format.html { redirect_to grid_url(@grid), notice: "Grid was successfully created." }
        format.json { render :show, status: :created, location: @grid }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grids/1 or /grids/1.json
  def update
    respond_to do |format|
      if @grid.update(grid_params)
        format.html { redirect_to grid_url(@grid), notice: "Grid was successfully updated." }
        format.json { render :show, status: :ok, location: @grid }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grids/1 or /grids/1.json
  def destroy
    @grid.destroy

    respond_to do |format|
      format.html { redirect_to grids_url, notice: "Grid was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grid
      @grid = Grid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grid_params
      params.require(:grid).permit(:make, :model, :color)
    end
end

class GPsController < ApplicationController
  before_action :set_gp, only: [:show, :edit, :update, :destroy]

  # GET /gps
  # GET /gps.json
  def index
    @gps = Gps.all
  end

  # GET /gps/1
  # GET /gps/1.json
  def show
  end

  # GET /gps/new
  def new
    @gp = Gps.new
  end

  # GET /gps/1/edit
  def edit
  end

  # POST /gps
  # POST /gps.json
  def create
    @gp = Gps.new(gp_params)

    respond_to do |format|
      if @gp.save
        format.html { redirect_to @gp, notice: 'Gps was successfully created.' }
        format.json { render :show, status: :created, location: @gp }
      else
        format.html { render :new }
        format.json { render json: @gp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gps/1
  # PATCH/PUT /gps/1.json
  def update
    respond_to do |format|
      if @gp.update(gp_params)
        format.html { redirect_to @gp, notice: 'Gps was successfully updated.' }
        format.json { render :show, status: :ok, location: @gp }
      else
        format.html { render :edit }
        format.json { render json: @gp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gps/1
  # DELETE /gps/1.json
  def destroy
    @gp.destroy
    respond_to do |format|
      format.html { redirect_to gps_index_url, notice: 'Gps was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gp
      @gp = Gps.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gp_params
      params.require(:gp).permit(:time, :lat, :lon, :alt, :quality, :satellites, :hdop, :geoidal, :age, :stationID, :raw, :valid, :type)
    end
end

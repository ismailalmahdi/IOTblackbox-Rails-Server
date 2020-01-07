class ValuesController < ApplicationController
	before_action :find_sensor
	skip_before_action :verify_authenticity_token,
    if: Proc.new { |c| c.request.format == 'application/json' }
	before_action :authenticate_user!

	# POST /sensors/id/values
  # POST /sensors/id/values.json
	def create
		@value = @sensor.values.create(value_params)
		respond_to do |format|
			if @value.save
				format.html { redirect_to @sensor, notice: 'Value was successfully created.' }
				format.json { render :show, status: :created, location: @sensor }
			else
				format.html { render :new }
				format.json { render json: @sensor.errors, status: :unprocessable_entity }
			end
		end
	end

	private
	# Find the sensor for the values recived
	def find_sensor
		@sensor = Sensor.find(params[:sensor_id])
	end
	# Never trust parameters from the scary internet, only allow the white list through.
	def value_params
		params.require(:value).permit(:json)
	end
end

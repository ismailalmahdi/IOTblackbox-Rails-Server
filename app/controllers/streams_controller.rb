class StreamsController < ApplicationController
  before_action :set_stream, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /streams
  # GET /streams.json
  def index
    @streams = Stream.all
  end

  # GET /streams/1
  # GET /streams/1.json
  def show
  end

  # GET /streams/new
  def new
    @stream = Stream.new
  end

  # GET /streams/1/edit
  def edit
  end

  # POST /streams
  # POST /streams.json
  def create
    @stream = Stream.new(stream_params)

    respond_to do |format|
      if @stream.save
        format.html { redirect_to @stream, notice: 'Stream was successfully created.' }
        format.json { render :show, status: :created, location: @stream }
      else
        format.html { render :new }
        format.json { render json: @stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /streams/1
  # PATCH/PUT /streams/1.json
  def update
    if json_request? then
      if(params.has_key?(:live)) then
      @stream.live.attach(data: params[:live][:data], filename: params[:live][:filename], content_type:params[:live][:content_type])
      end
      if(params.has_key?(:frame1)) then
      @stream.frame1.attach(data: params[:frame1][:data], filename: params[:frame1][:filename], content_type:params[:frame1][:content_type])
      end
      if(params.has_key?(:frame2)) then
      @stream.frame2.attach(data: params[:frame2][:data], filename: params[:frame2][:filename], content_type:params[:frame2][:content_type])
      end
      if(params.has_key?(:frame3)) then
      @stream.frame3.attach(data: params[:frame3][:data], filename: params[:frame3][:filename], content_type:params[:frame3][:content_type])
      end
      if(params.has_key?(:frame4)) then
      @stream.frame4.attach(data: params[:frame4][:data], filename: params[:frame4][:filename], content_type:params[:frame4][:content_type])
      end
      if(params.has_key?(:frame5)) then
      @stream.frame5.attach(data: params[:frame5][:data], filename: params[:frame5][:filename], content_type:params[:frame5][:content_type])
      end
      if(params.has_key?(:frame6)) then
      @stream.frame6.attach(data: params[:frame6][:data], filename: params[:frame6][:filename], content_type:params[:frame6][:content_type])
      end
      if(params.has_key?(:frame7)) then
        @stream.frame7.attach(data: params[:frame7][:data], filename: params[:frame7][:filename], content_type:params[:frame7][:content_type])
      end
      if(params.has_key?(:frame8)) then
          @stream.frame8.attach(data: params[:frame8][:data], filename: params[:frame8][:filename], content_type:params[:frame8][:content_type])
      end
    end
    respond_to do |format|
      if @stream.update(stream_params)
        format.html { redirect_to @stream, notice: 'Stream was successfully updated.' }
        format.json { render :show, status: :ok, location: @stream }
      else
        format.html { render :edit }
        format.json { render json: @stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /streams/1
  # DELETE /streams/1.json
  def destroy
    @stream.destroy
    respond_to do |format|
      format.html { redirect_to streams_url, notice: 'Stream was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stream
      @stream = Stream.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stream_params
      params.fetch(:stream, {}).permit(
        live: [:data,:filename,:content_type,:identify],
        frame1: [:data,:filename,:content_type,:identify],
        frame2: [:data,:filename,:content_type,:identify],
        frame3: [:data,:filename,:content_type,:identify],
        frame4: [:data,:filename,:content_type,:identify],
        frame5: [:data,:filename,:content_type,:identify],
        frame6: [:data,:filename,:content_type,:identify],
        frame7: [:data,:filename,:content_type,:identify],
        frame8: [:data,:filename,:content_type,:identify]
      );
    end

  protected

    def json_request?
      request.format.json?
    end
end

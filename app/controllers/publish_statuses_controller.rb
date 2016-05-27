class PublishStatusesController < ApplicationController
  before_action :set_publish_status, only: [:show, :edit, :update, :destroy]

  # GET /publish_statuses
  # GET /publish_statuses.json
  def index
    @publish_statuses = PublishStatus.all
  end

  # GET /publish_statuses/1
  # GET /publish_statuses/1.json
  def show
  end

  # GET /publish_statuses/new
  def new
    @publish_status = PublishStatus.new
  end

  # GET /publish_statuses/1/edit
  def edit
  end

  # POST /publish_statuses
  # POST /publish_statuses.json
  def create
    @publish_status = PublishStatus.new(publish_status_params)

    respond_to do |format|
      if @publish_status.save
        format.html { redirect_to @publish_status, notice: 'Publish status was successfully created.' }
        format.json { render :show, status: :created, location: @publish_status }
      else
        format.html { render :new }
        format.json { render json: @publish_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publish_statuses/1
  # PATCH/PUT /publish_statuses/1.json
  def update
    respond_to do |format|
      if @publish_status.update(publish_status_params)
        format.html { redirect_to @publish_status, notice: 'Publish status was successfully updated.' }
        format.json { render :show, status: :ok, location: @publish_status }
      else
        format.html { render :edit }
        format.json { render json: @publish_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publish_statuses/1
  # DELETE /publish_statuses/1.json
  def destroy
    @publish_status.destroy
    respond_to do |format|
      format.html { redirect_to publish_statuses_url, notice: 'Publish status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publish_status
      @publish_status = PublishStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publish_status_params
      params.require(:publish_status).permit(:status_name, :ordering)
    end
end

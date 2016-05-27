class BannerFormatsController < ApplicationController
  before_action :set_banner_format, only: [:show, :edit, :update, :destroy]

  # GET /banner_formats
  # GET /banner_formats.json
  def index
    @banner_formats = BannerFormat.all
  end

  # GET /banner_formats/1
  # GET /banner_formats/1.json
  def show
  end

  # GET /banner_formats/new
  def new
    @banner_format = BannerFormat.new
  end

  # GET /banner_formats/1/edit
  def edit
  end

  # POST /banner_formats
  # POST /banner_formats.json
  def create
    @banner_format = BannerFormat.new(banner_format_params)

    respond_to do |format|
      if @banner_format.save
        format.html { redirect_to @banner_format, notice: 'Banner format was successfully created.' }
        format.json { render :show, status: :created, location: @banner_format }
      else
        format.html { render :new }
        format.json { render json: @banner_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banner_formats/1
  # PATCH/PUT /banner_formats/1.json
  def update
    respond_to do |format|
      if @banner_format.update(banner_format_params)
        format.html { redirect_to @banner_format, notice: 'Banner format was successfully updated.' }
        format.json { render :show, status: :ok, location: @banner_format }
      else
        format.html { render :edit }
        format.json { render json: @banner_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banner_formats/1
  # DELETE /banner_formats/1.json
  def destroy
    @banner_format.destroy
    respond_to do |format|
      format.html { redirect_to banner_formats_url, notice: 'Banner format was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banner_format
      @banner_format = BannerFormat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banner_format_params
      params.require(:banner_format).permit(:title, :height, :width)
    end
end

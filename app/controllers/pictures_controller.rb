class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /pictures
  # GET /pictures.json
  def index
    @pictures = Picture.all
  end

  # GET /pictures/1
  # GET /pictures/1.json
  def show
  end

  # GET /pictures/new
  def new
    @picture = Picture.new
    @user = User.find(current_user.id)
  end

  # GET /pictures/1/edit
  def edit

  end

  # POST /pictures
  # POST /pictures.json
  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    respond_to do |format|
      if @picture.save
        format.html { redirect_to pictures_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @picture }
        format.js { @status = "success"}
        #binding.pry
      else
        format.html { render :new }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
        format.js { @status = "fail" }
      end
    end

  end
  # PATCH/PUT /pictures/1
  # PATCH/PUT /pictures/1.json
  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to pictures_path, notice: 'Picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to pictures_url, notice: 'Picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    def picture_params
      # params.require(:picture).permit(:date)
      params.require(:picture).permit(:name,:title,:content,:date, :image, :image_cache, :remove_image)
    end
end

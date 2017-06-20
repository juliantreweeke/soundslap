class SoundsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @sound = Sound.new
  end

  def create

    sound = Sound.new sound_params

    if params[:file].present?
      # perform upload to cloudinary
      req = Cloudinary::Uploader.upload params[:file]
      sound.image = req['public_id']
    end

    sound.user = @current_user   # associate sound with logged in user

    sound.save
    redirect_to sound_path(sound.id)

  end

  def edit
    @sound = Sound.find params["id"]
  end

  def update
    sound = Sound.find params["id"]
    sound.update sound_params
    redirect_to sound_path( params["id"] )
  end

  def show
    @sounds = Sound.find params["id"]

  end

  def index
      @sounds = Sound.all


  end

  def search
  @search =  params[:q]
  @result = Sound.joins(:tags).where(tags: {name: params[:q]})


  @sounds = Sound.all
  @tags = Tag.all

  end



  def destroy

    Sound.find(params[:id]).destroy
    flash[:success] = "Sound deleted"
    redirect_to sounds_path

  end

  private
  def sound_params
    params.require(:sound).permit(:sound, :title, :description, :image)
  end
end

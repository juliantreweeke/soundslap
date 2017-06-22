class SoundsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @sound = Sound.new
  end

  def create

    sound = Sound.new sound_params

    if params[:file].present?
      tag = Tag.find_or_create_by name: params[:tag]
      # tag = Tag.find_or_create_by name: params[:tag]


      # tag = Tag.new name: params[:tag]


      # perform upload to cloudinary
      req = Cloudinary::Uploader.upload(params[:file],:resource_type => :video )
      sound.image = req['public_id']

      if tag.save
       sound.tags << tag
     end


    end

    sound.user = @current_user   # associate sound with logged in user

    sound.save

    if    sound.save
          # save was successful, now add cuisine associations
          tags = Tag.where id: params[:sound][:tag_ids]
          sound.tags << tags
          redirect_to sound_path(sound.id)
        else
          # render :new
    end










    # redirect_to sound_path(sound.id)

  end

  def edit
    @sound = Sound.find params["id"]
    redirect_to sound_path unless @current_user.id == @sound.user_id || @current_user.is_admin

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
    # get what the user searched for
  @search =  params[:q]


  # get what the user searched for and split each word into an array
  @searchsplit = params[:q].split(' ')

  # get what the user searched for and match it with tag list
  @result = Sound.joins(:tags).where(tags: {name: params[:q]})

  # get what the user searched for and match it with sound title list
  @titleresult = Sound.where(title: params[:q])

  # get what the user searched for and match it with the split array
  @titleresult =  Sound.where(title: [@searchsplit])

  @emptyarray = []


query =  params[:q]
query_length = query.split.length
@multisearch = Sound.where([(['title LIKE ?'] * query_length).join(' OR ')] + (query.split.map {|query| "%#{query}%"}))



  @sounds = Sound.all
  @tags = Tag.all

  end

  def record

  @sound = Sound.new



  end








  def destroy
    redirect_to sound_path unless @current_user.id == @sound.user_id || @current_user.is_admin
    Sound.find(params[:id]).destroy
    flash[:success] = "Sound deleted"
    redirect_to sounds_path

  end

  private
  def sound_params
    params.require(:sound).permit(:sound, :title, :description, :image)
  end
end

class VibesController < ApplicationController
  before_action :find_vibe, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  def index 
    if user_signed_in? 
			# Selects the items where the user's id is the same as the current_user.
			# Selects only the checklist items for the current_user.
			@vibes = Vibe.where(:user_id => current_user.id).order("created_at DESC")
     
		end

  end

  def new
    @vibe = current_user.vibes.build
  end

  def show 
    @vibe = Vibe.find(params[:id])
   
   
  end

  def create
    
    @vibe = current_user.vibes.build(vibe_params)
    if @vibe.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @vibe.update(vibe_params)
      redirect_to vibe_path(@vibe)
    else
      render 'new'
    end

    def destroy
      @vibe.destroy
      redirect_to root_path
    end
  end

  private 
  def vibe_params  
  params.require(:vibe).permit(:name, :details, :state, :aura, :file)
  end
  
  
  
  def find_vibe
    @vibe = Vibe.find(params[:id])
  end
end
 
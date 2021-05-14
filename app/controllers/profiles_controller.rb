
 class ProfilesController < ApplicationController

  
    
    def index
      @profiles = Profile.all
      redirect_to user_path(@profiles)
    end

    def edit
      @profile = Profile.find(params[:id])
    end
    
    def show
      @profile = Profile.find(params[:id])
      redirect to user_path(@profile)
    end
    
    def new
      @profile = Profile.new
      redirect_to new_profile_path(@profile)
    end
    
    def create
      @profile = Profile.new(profile_params)
      @profile.user_id = current_user.id
      @profile.save
      redirect to user_path(@profile)
    end
    private

    def update
      @profile = Profile.find(params[:id])
      @profile.update_attributes(profile_params)
    end

def find_profile
  @profile = Profile.find(params[:id])
end

def profile_params
  params.permit(:profile).permit(:user_id, :name, :photo, :bio) 
end
 end
  
  
  


class ImageElementsController < ApplicationController
  before_action :find_vibe, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :vibemeter]
  
  def index
    if user_signed_in? 
			# Selects the items where the user's id is the same as the current_user.
			# Selects only the checklist items for the current_user.
			@vibes = Vibe.where(:user_id => current_user.id).order("created_at DESC")
  
		end
  end
end

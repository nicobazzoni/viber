class ApplicationController < ActionController::Base


  private
     def user_params
     
      params.require(:user).permit(:oracle, :vibe)
      end
  end



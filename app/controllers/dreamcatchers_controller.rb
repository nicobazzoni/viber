class DreamcatchersController < ApplicationController
  
  
  before_action :authenticate_user! 

  
  
 def index
    # if params[:dreamcatcher_id]
    #   @dreamcatcher = Dreamcatcher.find_by(params[:dreamcatcher_id])
    @dreams = @dreamcatcher.dreams
    if @dreams.save 
      redirect_to dreamcatcher_dreams_path(@dreamcatcher)
    else
      @dreams = Dream.all(dream_params)
  
 end


    def new
      
    if params[:dreamcatcher_id]
      
  @dreamcatcher = Dreamcatcher.find_by_id(params[:Dreamcatcher_id])
  else
      @dreamcatcher.dreams.build
    end
  end



  def create
    
    @dream = Dream.new(dream_params)
    if @dream.save
      redirect_to root_path
    else
      render 'new'
    end
  end
   
  def show
   end 

  private

   def dreamer_params

    params.require(:dream).permit(:name, dreamcatcher_attributes: [:description])
   end
  end
end


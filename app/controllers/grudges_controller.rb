class GrudgesController < ApplicationController
  before_action :find_grudge, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 

   

   def index
      @grudges = Grudge.all
      @grudge.enemies.build
   end
 
  def new
    @grudge = Grudge.new
  
   end
 
   def create
    @grudge = Grudge.new(grudges_params)
    @grudge.save
    redirect_to grudges_path(@grudge)
   end



  

   private 
  
     def find_grudge
      @grudge = Grudge.find(current_user.id)
    end
  
  
   def grudges_params
   
    params.require(:grudge).permit(:reason, enemy_attributes: [:name, :id])
  end
end

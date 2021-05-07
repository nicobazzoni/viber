
class OraclesController < ApplicationController
 
  before_action :authenticate_user! 
  def index
   @wisdoms = Oracle::ORACLE_OPTIONS.shuffle.first 
  
  end


  def new
    @oracle = Oracle.new 
    end

    def show
      @oracle = Oracle.find(params[:id])
    end

  def create
    @oracle = Oracle.find_or_create_by(params[:id])
    if @oracle.save
      render 'show'
    end
  end

  private

    
  def find_oracle
   
    @oracle = Oracle.all.sort.RAND(oracle_params)
  end

  def oracle_params 
  params.require(:oracle).permit(:wisdom, :user_id)
  end

end
 


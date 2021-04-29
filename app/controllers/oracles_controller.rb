class OraclesController < ApplicationController
  before_action :find_oracle, only: [:show, :edit, :update, :destroy, :index, :new]
  before_action :authenticate_user! 
  def index
    if user_signed_in? 
			
			@oracles = Oracle.search(params[:search])
    end
  end


  def new
    @oracle = current_user.oracles.build
  end

  private

    
  def find_oracle
    @oracle = Oracle.find(current_user.id)
  end

  def oracle_params 
  params.require(:oracle).permit(:wisdom, :bravery, :compassion, :envy, :wrath, :sloth, :despair, :user_id)
  end

end
 


class OraclesController < ApplicationController
  def index
    if user_signed_in? 
			
			@oracles = Oracle.all 
  end
end

  def new
    @oracle = current_user.build
  end

  private

  def oracle_params 
  params.require(:oracle).permit(:wisdom, :bravery, :compassion, :envy, :wrath, :sloth, :despair, :user_id)
  end
 
end

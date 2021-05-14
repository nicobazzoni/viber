class ClubsController < ApplicationController

  before_action :authenticate_user! 
  before_action :find_club, only: [:edit, :show]
  attr_accessor :avatar_params
    def edit
      @club = Club.find(params[:id])
    end

    def index
      @clubs = Club.all
      @memberships = Membership.all
      @avatars = Avatar.all
       end


   def show
  @club =  Club.where(:user_id => current_user.id).order("created_at DESC")
  
   end
   
   def new 
    
    @club = Club.new
    
   end


    def create
     
      @club = Club.new(club_params)
     
        if @Club.save
        flash[:notice] = "Successfully created club."
        redirect_to @club
        else
        render :action => 'new'
        end
    end
    
  
    
   




  private 

  def find_club
    @club= Club.find(current_user.id)
  end

  
  def club_params
  params.require(:club).permit(:id, :user_id, :name, :club_id, avatar_params: [:name, :membership_id] )
  end

end


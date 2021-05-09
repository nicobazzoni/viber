class UsersController < ApplicationController
  
  before_action :authenticate_user!, except: [:index]
  
  
     def index 
   
      @users = User.search(params[:search])
     end
  

  def new 
    @user = User.new
  end

  def search
  @user = User.search(params[:search])
  end
   
  # def create
  #   @user = User.new(user_params)
  #   @user.user_id = current_user.id
  #   @user.save
  #   redirect to profile_path(@user.id)
  # end
  
  def create
    
    @user = user.build(user_params)
    if @user.save
      redirect_to user_profile
    else
      render 'show'
    end
  end

  def edit
  end

  def update
    if @user.build.update(user_params)
      redirect_to user_profile
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find_by_id(params[:id])
  end
    
  


  def self.search(search)

    if search 
      find(:all, :conditions => [ User::BEING_OPTIONS, {} ])
    else
      find(:all)
    end
  end
  
  
  private
  def user_params
    params.require(:user).permit(:email, :being, :bio, :name, :user_id, :search)
  end
   
 
end
class PagesController < ApplicationController
 
    before_action :find_message, only: [:show, :index, :edit, :update, :destroy]
    before_action :authenticate_user! 
    
    
    def create
      message = Message.new(message_params)
      message.user = current_user
      message.save
  
      
    end

  
    def index 
      @messages = Message.all
      @message = Message.new
    end
  
    def show 
      Message.find(params[:id])
      @messages = Message.all
      @message = Message.new
    end
    
  
    def new
      
      @messages = Message.all
      @message = Message.new
      
    end
  
    
  
    def destroy
      Message.find(params[:id]).destroy
      respond_to do |format|
      format.js { render "destroy", :locals => {:id => params[:id]} }
    end
    end
  
     private 
  
     def find_message
      @message = Message.find(current_user.id)
    end
  
     def message_params
  
      params.require(:message).permit(:body)
    end
  end
  
  

class ChatController < ApplicationController
  before_action :authenticate_user!, only: :index
  def show
    @message = Message.all
    @users = current_user.email
  end
  
  
    


  def index
    
    @user = current_user
    @msg = 'you logined at: ' + @user.current_sign_in_at.to_s

    
  
  end

end

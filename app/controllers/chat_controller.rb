class ChatController < ApplicationController
  before_action :authenticate_user!, only: :index
  def show
    @message = Message.all
  end
  
  
    


  def index
    ##ログイン前のページ
    @user = current_user
    @msg = 'you logined at: ' + @user.current_sign_in_at.to_s

    
  
  end

end

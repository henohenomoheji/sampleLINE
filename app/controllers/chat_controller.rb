class ChatController < ApplicationController
  
  before_action :authenticate_user!, only: :index
  def index
    
    @user = current_user
    @msg = 'ログイン日時:' + @user.current_sign_in_at.to_s
  end

  def show
    @message = Message.all
    @users = current_user.email
  end
end
class ChatController < ApplicationController
  
  before_action :authenticate_user!, only: :index
  before_action :set_chat ,only: :delete
  def index
    
    @user = current_user
    @msg = 'ログイン日時:' + @user.current_sign_in_at.to_s
  end

  def show
    @message = Message.all
    @users = current_user.email
  end
  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to '/chat/show'
  end
  private
  def set_chat
    @message = Message.find(params[:id])
  end

end
class ChatController < ApplicationController
  def show
    @message = Message.all
  end
end

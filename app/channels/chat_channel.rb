class ChatChannel < ApplicationCable::Channel
  # chatチャンネル接続時にコールされる
  def subscribed
     stream_from "chat_channel"
     #ActionCable.server.broadcast 'chat_channel', message: 'connected.'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  
  # chatチャンネルのspeakメソッドは、受け取ったメッセージを全クライアントにブロードキャストする
  def speak(data)
    Message.create! body:data['message']
    ActionCable.server.broadcast 'chat_channel', {name: data["name"], message: data["message"]}
    
  end
end

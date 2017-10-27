 App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
   $('#messages').append('<p>'+data["message"]+'</p>')
    # Called when there's incoming data on the websocket for this channel
   #if (data["message"] isnt "" ) then 
  # speakメソッドでメッセージを要求
  speak: (message) ->
    @perform 'speak',message: message
  
  $(document).on 'click', '[data-behavior~=chat_input]', (event) ->
    #nameForm = $('#name_form')
    messageForm = $('#message_form')
    App.chat.speak messageForm.val()
    messageForm.val('')

  #$(document).on 'keypress', '[data-behavior~=caht_input]', (event) ->
 
  
  #if event.keyCode is 13 # return = send
    #App.chat.speak event.target.value
    #event.target.value = ''
    #event.preventDefault()


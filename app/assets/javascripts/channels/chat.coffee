 App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server
　
　#購読者が受け取るdata
  received: (data) ->
   $('p').append('<p>'+data["message"]+'</p>')
   $('#name').append('<p>'+data["name"]+'</p>')
   #$('#messages').append('<p>'+data["message"]+'</p>')
    # Called when there's incoming data on the websocket for this channel
   #if (data["message"] isnt "" ) then 
  # speakメソッドでメッセージを要求
  speak: (name,message) ->
    @perform 'speak',name: name,message: message
  
  $(document).on 'click', '[data-behavior~=chat_input]', (event) ->
    #nameForm = $('#name_form')
    nameForm = $('#name_form')
    messageForm = $('#message_form')
    App.chat.speak nameForm.val(),messageForm.val()
    
    messageForm.val('')

  #$(document).on 'keypress', '[data-behavior~=caht_input]', (event) ->
 
  
  #if event.keyCode is 13 # return = send
    #App.chat.speak event.target.value
    #event.target.value = ''
    #event.preventDefault()


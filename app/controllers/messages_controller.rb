class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token 
  
  def reply
    boot_twilio
    
    message_body = params["Body"]
    from_number = params["From"]
    
    puts "hello"
    puts session[:foo]
    puts session[:hash]
    puts session
    
    # spotify_user = RSpotify::User.new(@hash)
    # puts spotify_user
    
    # tracks = RSpotify::Track.search(message_body)
    # puts tracks 
    
    # playlist = spotify_user.create_playlist!('Spotify + Twilio')
    # playlist.add_tracks!(tracks)
    
    @client.messages
      .create({
        from: '16304267198',
        to: from_number,
        body: "Hello from Mike\'s app! You texted me #{message_body}."
      })
  end 
  
  private
 
  def boot_twilio
    account_sid = 'ACd3f3ddb0a84556b722a94afaf6896a29'
    auth_token = 'de87d697b3813672be3ce7ae9fc3a989'
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end
  
end

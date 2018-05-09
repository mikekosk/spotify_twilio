class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token 
  
  def spotify
    
    # Authenticate User
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @hash = spotify_user.to_hash
    
    session[:foo] = '12345'
    puts session[:foo]
    
    session[:hash] = @hash
    puts session[:hash]
    
  end
  
end

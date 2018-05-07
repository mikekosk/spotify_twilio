class UsersController < ApplicationController
  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @user = User.new
    @hash = spotify_user.to_hash
  end
  
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate
   
   def authenticate
    RSpotify.authenticate("3e927350c48848e2af1c93c9bde9376f", "8bf82ef52e944b2fa46bdc6c73812422")
   end 
 
end

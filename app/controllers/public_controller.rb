class PublicController < ApplicationController
  def landing
  	@user = current_user # Recognises logged-in user 
  end
end

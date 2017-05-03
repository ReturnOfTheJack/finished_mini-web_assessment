class PublicController < ApplicationController
  def landing
  	@user = current_user
  end
end

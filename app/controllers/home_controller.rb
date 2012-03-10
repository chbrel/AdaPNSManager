class HomeController < ApplicationController
  def index
  	user = User.new
  	
  	@test = user.encrypt_password('mdp')
  end

end

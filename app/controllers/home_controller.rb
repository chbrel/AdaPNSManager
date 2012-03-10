class HomeController < ApplicationController
  def index
  	user = User.new
  	
  	@test = user.encrypt_password('mWindu02')
  end

end

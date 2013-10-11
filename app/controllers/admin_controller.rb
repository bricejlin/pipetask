class AdminController < ApplicationController
	http_basic_authenticate_with name: 'brice', password: 'pipertrack'
	
  def index
  	@pipes = Pipe.all
  end

end

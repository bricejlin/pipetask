class AdminController < ApplicationController
	before_action :admin_user

  def index
  	@pipes = Pipe.all
  end
end

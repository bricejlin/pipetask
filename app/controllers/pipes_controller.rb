class PipesController < ApplicationController
	before_action :correct_pipe, only: [:show, :edit, :update, :approve]
  def index
  	@pipes = Pipe.all
  end

  def new
  	@pipe = Pipe.new
  	9.times { @pipe.images.build }
  end

  def create
  	@pipe = Pipe.new(pipe_params)
  	if @pipe.save
  		redirect_to root_url, notice: "Pipe successfully added!"
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update
  	respond_to do |format|
  		if @pipe.update(pipe_params)
  			format.html { redirect_to root_url }
  			format.js
  		else
  			format.html { render :index }
  		end
  	end
  end

  def approve # toggles pipe's approval value true/false
  	respond_to do |format|
	  	if @pipe.toggle!(:approved)
	  		format.html { redirect_to root_url }
	  		format.js
	  	else
	  		format.html { render :index }
	  	end
  	end
  end

private

	def pipe_params
		params.require(:pipe).permit(:name, :sides_shot, :comments, images_attributes: :url)
	end

	def correct_pipe
		@pipe = Pipe.find(params[:id])
	end
end

class PipesController < ApplicationController
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

  def approve
  	@pipe = Pipe.find(params[:id])
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
		params.require(:pipe).permit(:name, :sides_shot, images_attributes: :url)
	end
end

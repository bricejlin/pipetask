class PipesController < ApplicationController
	before_action :correct_pipe, only: [:show, :edit, :update, :destroy, :approve]
  before_action :admin_user, only: [:new, :create, :edit, :destroy]
  #before_action :signed_in_user, only: [:approve, :update]

  def index
  	@pipes = Pipe.all.order('created_at DESC')
  end

  def new
  	@pipe = Pipe.new
  end

  def create
  	@pipe = Pipe.new(pipe_params)    
    if !params[:images_file].nil?
      @pipe.sides_shot = params[:images_file][:url].count
      params[:images_file][:url].each do |url|
        @image = @pipe.images.build
        @image.file = url
        @image.save
      end
    end
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
  			format.html { redirect_to root_url, notice: "#{@pipe.name} was succesfully updated!" }
  			format.js
  		else
  			format.html { render :index }
  		end
  	end
  end

  def destroy
    @pipe.destroy
    redirect_to root_url, alert: "#{@pipe.name} was succesfully deleted!"
  end

  def approve # toggles pipe's approval value true/false
  	respond_to do |format|
	  	if @pipe.toggle!(:approved)
	  		format.html { redirect_to root_url }
	  		format.js
	  	else
	  		format.html { redirect_to root_url, notice: "Please sign in first!" }
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

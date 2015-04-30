class TagsController < ApplicationController
  def index
  	@tags = Tag.all
  end

  def show 
  	@tag = Tag.find(params[:id])
  end

  def new
  	@tag = Tag.new
  end

  def create
  	@tag = Tag.new(create_params)
  	if @tag.save
  	  redirect_to tags_url
  	else
  	  render :new
  	end
  end

  def edit
  	@tag = Tag.find(params[:id]) 
  end

  def update
  	@tag = Tag.find(params[:id])
  	if @tag.update(update_params)
  	  redirect_to tags_path
  	else
  	  render :edit
  	end
  end

  private

    def create_params
      params.require(:tag).permit(:great_grandparent_name, :grandparent_name, :parent_name, :name, :layer, :tag_image, :remote_tag_image_url)
    end

    def update_params
      params.require(:tag).permit(:great_grandparent_name, :grandparent_name, :parent_name, :name, :layer, :tag_image, :remote_tag_image_url)
    end
end

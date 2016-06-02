class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end
  
  def show
    @tag = Tag.find(params[:id])
  end
  
  def destroy
    @tag = Tag.destroy(params[:id])
	redirect_to tags_path(@tag)
  end
  
end

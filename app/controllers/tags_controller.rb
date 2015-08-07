class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id]).name
    @prototypes = Prototype.tagged_with(@tag).page(params[:page]).per(4)
  end
end

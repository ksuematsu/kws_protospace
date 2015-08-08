class TagsController < ApplicationController
  def index
    @tags       = Tag.all
  end

  def show
    @tag        = Tag.find(params[:id])
    @prototypes = Prototype.tagged_with(@tag.name).page(params[:page]).per(4)
  end
end

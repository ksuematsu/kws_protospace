class PrototypesController < ApplicationController
  def index
  end
  def new
    @prototype = Prototype.new
  end
  def create
    @prototype = Prototype.create(prototype_params)
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept)
  end
end

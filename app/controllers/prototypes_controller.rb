class PrototypesController < ApplicationController
  def show
    @prototype = Prototype.find(params[:id])
  end
  def new
    @prototype = Prototype.new
  end
  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_url, notice: "Complete!"
    else
      redirect_to new_prototype_url, notice: "you need to fill requisite datas"
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, image_attributes: [:main_image, :sub_image_1, :sub_image_2, :sub_image_3]).merge(user_id: current_user.id)
  end
end

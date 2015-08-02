module PrototypesHelper
  def by_whom?
    @prototype.user.user_name
  end

  def sub_image(number)
    if number == 1
      @prototype.image.sub_image_1
    elsif number == 2
      @prototype.image.sub_image_2
    else
      @prototype.image.sub_image_3
    end
  end
end


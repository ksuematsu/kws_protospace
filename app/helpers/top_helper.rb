module TopHelper
  def by_whom?(prototype)
    prototype.user.user_name
  end

  def main_image(prototype)
    prototype.image.main_image
  end
end


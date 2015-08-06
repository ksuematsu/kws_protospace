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

  def creater_path
    "/users/#{ @prototype.user_id }"
  end

  def affiliation
    @prototype.user.member_of
  end

  def creater_avatar
    "#{ @prototype.user.avatar }"
  end

  def like_size
    @prototype.get_likes.size
  end

  def commenter_avatar(comment)
    "#{ comment.user.avatar }"
  end

  def commenter(comment)
    comment.user.user_name
  end
end


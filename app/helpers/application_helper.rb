module ApplicationHelper
  def date_of_created(prototype)
    "#{ prototype.created_at.month } , #{ prototype.created_at.day }"
  end

  def tag_id(tag)
    Tag.where(name: "#{tag}")[0].id
  end
end

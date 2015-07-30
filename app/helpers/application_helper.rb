module ApplicationHelper
  def date_of_created(prototype)
    "#{prototype.created_at.month} , #{prototype.created_at.day}"
  end
end

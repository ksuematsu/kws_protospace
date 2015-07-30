module PrototypesHelper
  def by_whom?
    @prototype.user.user_name
  end
end


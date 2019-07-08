module ApplicationHelper
  def selected_clothes(genre)
    return @user_clothes.where(genre: genre)
  end
end

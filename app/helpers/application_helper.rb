module ApplicationHelper
  def unicode_rating(rating)
    case rating
    when "green"
      "🟢"
    when "amber"
      "🟠"
    else
      "🔴"
    end
  end
end

module LessonsHelper
  def categories
    [
      ['Beginner', 1], ['Intermediate', 2], ['Advanced', 3]
    ]
  end

  def get_category(user)
    selected = user.category
    selected = selected.to_i

    if selected <= categories.length && selected > 0
      "#{categories[selected.to_i - 1][0]}"
    else
      return
    end
  end
end

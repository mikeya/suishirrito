module ApplicationHelper
  def cp(path)
    "current" if current_page?(path)
  end

  def set_title(title = "Sushirrito")
    content_for :title, title
  end
end

module ApplicationHelper
  def current_path
    request.path
  end

  def active_tab(path)
    'active' if current_path == path
  end
end
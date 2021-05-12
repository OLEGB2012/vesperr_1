module ApplicationHelper
  def anchor_link(anchor_name)
    "#{anchor_name.downcase.split(' ').join('_')}"
  end
end

module ApplicationHelper
  def add_body_class(val)
    content_for(:extra_body_classes) { val }
  end

  def body_class
    [ controller_path.gsub("_", "-").split("/").first,
      controller_path.gsub("_", "-").gsub("/", "__"),
      "#{controller_path.gsub("_", "-").gsub("/", "__")}__#{action_name.gsub("_", "-")}"
    ].uniq.compact.join(" ")
  end
end

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

  def favicon_image_from_url(url)
    domain = url.gsub(/^https?:\/\//, "")
    "//www.google.com/s2/favicons?domain=#{domain}"
  end

  def breadcrumbs
    return "" unless @breadcrumbs.present?
    component("breadcrumbs", items: @breadcrumbs[:items], actions: @breadcrumbs[:actions])
  end
end

module IconsHelper
  def input_group_addon_icon(style, name, options = {})
    content_tag :div, class: "input-group-prepend" do
      content_tag :span, class: "input-group-text" do
        icon(style, name, *options)
      end
    end
  end
end

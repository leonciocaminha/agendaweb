module ApplicationHelper

  def handle_field(field)
    field.blank? ? "n/d" : field
  end

  def header(title, path)
    header_title = content_tag :div, class: "col-md-6" do
              content_tag :h4, title
            end

    button = (
      content_tag :div, class: "col-md-6 text-right" do
        link_to t("app.new", name: title), path, class: "btn btn-success"
      end
    )
    content_tag :div, class: "well row" do
      concat(header_title)
      concat(button)
    end
  end
end

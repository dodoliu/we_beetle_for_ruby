class CustomFormBuilder < ActionView::Helpers::FormBuilder
  def error_messages
    if object.errors.full_messages.any?
      @template.content_tag(:div) do
        @template.content_tag(:strong, "错误")
        @template.content_tag(:ul) do
          object.errors.full_messages.map do |msg|
            @template.content_tag(:li, msg)
          end.join.html_safe
        end
      end
    end
  end
end
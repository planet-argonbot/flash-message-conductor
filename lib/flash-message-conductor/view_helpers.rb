module FlashMessageConductor
  module ViewHelpers
    def render_flash_message(css_class, message = "")
      return "" if message.blank?
      content_tag("p", message.html_safe, :class => "#{css_class}")
    end

    def render_flash_messages(div_id = "flash_messages", div_class = "")
      return unless flash_message_set?

      div_content = ''
      FLASH_MESSAGE_TYPES.each do |key|
        div_content << render_flash_message(key.to_s, flash[key]) unless flash[key].blank?
      end

      content_tag('div', div_content.html_safe, :id => div_id, :class => div_class)
    end
  end
end
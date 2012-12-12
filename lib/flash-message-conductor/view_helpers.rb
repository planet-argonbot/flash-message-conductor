module FlashMessageConductor
  module ViewHelpers
    def render_flash_message(css_class, message = "")
      return "" if message.nil? or message.blank?
      content_tag("p", message.html_safe, :class => "#{css_class}")
    end

    def render_flash_messages(div_id = "flash_messages", div_class = "")
      div_content = ''
      FLASH_MESSAGE_TYPES.each do |key|
        div_content << render_flash_message(key.to_s, flash[key]) unless flash[key].blank?
      end
      if div_content.blank?
        return ""
      else
        return content_tag('div', div_content.html_safe, :id => div_id, :class => div_class)
      end
    end

    def flash_message_set?
      flash_set = false
      FLASH_MESSAGE_TYPES.each do |key|
        flash_set = true unless flash[key].blank?
      end
      return flash_set
    end
  end
end
# ArgonHelpers

module PlanetArgon 
  module ControllerHelpers
    def add_error(msg)
      flash[:error] = msg
    end

    def add_notice(msg)
      flash[:notice] = msg
    end

    def add_message(msg)
      flash[:message] = msg
    end
  end
  
  module ViewHelpers
    
    FLASH_MESSAGE_TYPES = [ :error, :notice, :message ]
    
    def render_flash_message( css_class, message = "" ) 
      return "" if message.nil? or message.blank?
      content_tag( "p", message, :class => "#{css_class}" )
    end
    
    def render_flash_messages( div_id = "flash_messages"  )
      div_content = ''
      FLASH_MESSAGE_TYPES.each do |key|
        div_content << render_flash_message( key.to_s, flash[key] ) unless flash[key].blank?
      end
      content_tag( 'div', div_content, :id => div_id )
    end
    
  end
end
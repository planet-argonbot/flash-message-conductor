module FlashMessageConductor
  FLASH_MESSAGE_TYPES = [ :error, :notice, :message ]

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

    def flash_message_set?
      flash_set = false
      FLASH_MESSAGE_TYPES.each do |key|
        flash_set = true unless flash[key].blank?
      end
      return flash_set
    end
  end
end
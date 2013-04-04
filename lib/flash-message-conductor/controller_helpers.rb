module FlashMessageConductor
  FLASH_MESSAGE_TYPES = [ :alert, :error, :notice, :message ]

  module ControllerHelpers
    FLASH_MESSAGE_TYPES.each do |message_type|
      define_method("add_#{message_type.to_s}") { |message| flash[message_type] = message}
    end

    def flash_message_set?
      FLASH_MESSAGE_TYPES.any? { |key| flash[key].present? }
    end
  end
end
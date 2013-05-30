module FlashMessageConductor
  FLASH_MESSAGE_TYPES = [ :alert, :error, :notice, :message ]

  module ControllerHelpers
    module ClassMethods
    end
    FLASH_MESSAGE_TYPES.each do |message_type|
      define_method("add_#{message_type.to_s}") do |message, *options|
        options = options.first || Hash.new

        flash[message_type] = message

        case options[:state]
        when :discard
          flash.discard(message_type)
        when :now
          flash.now[message_type] = message
        when :keep
          flash.keep(message_type)
        end
      end
    end

    def flash_message_set?
      FLASH_MESSAGE_TYPES.any? { |key| flash[key].present? }
    end

    def self.included(base)
      base.extend ClassMethods
      base.helper_method :flash_message_set?
    end
  end
end
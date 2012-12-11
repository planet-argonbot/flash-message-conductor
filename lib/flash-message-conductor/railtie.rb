require 'flash-message-conductor/view_helpers'
require 'flash-message-conductor/controller_helpers'

module FlashMessageConductor
  class Railtie < Rails::Railtie
    initializer "flash_message_conductor.view_helpers" do
      ActionView::Base.send :include, FlashMessageConductor::ViewHelpers
    end

    initializer "flash_message_conductor.controller_helpers" do
      ActionController::Base.send :include, FlashMessageConductor::ControllerHelpers
    end
  end
end
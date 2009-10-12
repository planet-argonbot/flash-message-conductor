require 'flash_message_conductor'

ActionController::Base.send( :include, PlanetArgon::FlashMessageConductor::ControllerHelpers )
ActionView::Base.send( :include, PlanetArgon::FlashMessageConductor::ViewHelpers )
# Include hook code here
require File.dirname(__FILE__) + '/lib/argon_helpers'

ActionController::Base.send( :include, PlanetArgon::ControllerHelpers )
ActionView::Base.send( :include, PlanetArgon::ViewHelpers )

# override field errors
ActionView::Base.field_error_proc = 
         Proc.new{ |html_tag, instance| "<span class=\"field_with_errors\">#{html_tag}</span>" }


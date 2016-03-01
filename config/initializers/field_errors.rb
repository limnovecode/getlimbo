# ./config/initializers/field_errors.rb

# Disable default errors.
ActionView::Base.field_error_proc = Proc.new { |html_tag| html_tag }

# ./app/helpers/application_helper.rb

module ApplicationHelper
  include Span::ApplicationHelper
  include Span::SettingsHelper
  include Span::BillboardsHelper
  include Span::NetworksHelper
  include Span::BiographiesHelper
  include Span::TimelinesHelper
  include Span::ContactsHelper
end

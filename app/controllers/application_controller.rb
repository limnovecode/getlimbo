# ./app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
  # IMPORTANTE: Do not remove this helper.
  include ApplicationHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Perform action depending on the website status
  # before_action :go_online, only: [:offline]
  # before_action :go_offline, except: [:offline]
end

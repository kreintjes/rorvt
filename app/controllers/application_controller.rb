class ApplicationController < ActionController::Base
  USERS = { "test" => "test" } # XXX TODO move this somewhere safe.

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate

private
  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end
end

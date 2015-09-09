class ApplicationController < ActionController::API
  before_action :authenticate!

  include ActionController::Serialization
  include ActionController::HttpAuthentication::Token::ControllerMethods

  private
  def authenticate!
    authenticate_or_request_with_http_token do |token, options|
      Token.where(token: token).any?
    end
  end
end

class ApplicationController < ActionController::API
    include ActionController::HttpAuthentication::Token::ControllerMethods

    def authenticate
        authenticate_or_request_with_http_token do |token, options|
            @current_user = User.find_by(token: token)
        end
    end
end

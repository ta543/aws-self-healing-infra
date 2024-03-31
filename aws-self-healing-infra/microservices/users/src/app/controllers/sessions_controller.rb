class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
        if user&.authenticate(params[:password])
            user.update(token: generate_token)
            render json: { token: user.token }
        else
            render status: :unauthorized
        end
    end

    private

    def generate_token
        SecureRandom.hex(10)
    end
end

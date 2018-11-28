class ApplicationController < ActionController::API

    def login
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render :json => {
                :token => JWT.encode({ user_id: user.id }, nil, 'none')
                # byebug
        }
        else
        render :json => {
            :message => "Invalid credentials"
        }, status: 400
        end
    end

end

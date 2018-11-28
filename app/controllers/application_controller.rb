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

    def signup
        user = User.create(email: params[:email], password: params[:password])
        if user.valid?
        render :json => {
                :token => JWT.encode({ user_id: user.id }, nil, 'none')
                # byebug
        }
        else
        render :json => {
            :message => "Please try"
        }, status: 400
        end
    end

end

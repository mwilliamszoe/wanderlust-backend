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

    def authorization(request)
        if request.header
        :decoded_token => JWT.decode(request.header, nil, false)
        User.find_by(:decoded_token params[:decoded_token])
        else 
            undefined
            #i have no idea what i'm doing here
        end
    end

end

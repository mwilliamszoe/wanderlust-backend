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
        # byebug
        if user.valid?
        render :json => {
                :token => JWT.encode({ user_id: user.id }, nil, 'none')
        }
        else
        render :json => {
            :message => "Please try again"
        }, status: 400
        end
    end

    def get_token(request)
        # check for request.headers["Authorize"]
        if defined?(request.headers["Authorization"])
            #send back token
            return request.headers["Authorization"].split(' ')[1]
        else
            return {
                :message => "No Authorization header"
            }
        end
    end

    def parse_token(token)
        #decode the token and ruturn the user from the encoded data
        
        #return false if the token is bullshit
    end

    def authorize_user(request) 
        if get_token(request)
            return User.find(parse_token(token))
        end
    end


end

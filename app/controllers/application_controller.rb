class ApplicationController < ActionController::API

    def login
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
        token = JWT.encode({ user_id: user.id }, nil, 'none')
        render :json => {user: user, experiences: user.experiences, jwt: token, likes: user.likes}, status: 200
        #     render :json => {
        #         :token => JWT.encode({ user_id: user.id }, nil, 'none')
        #         # byebug
        # }
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

    # def get_token(request)
    #     if (request.headers["Authorization"])
    #         #send back token
    #         token = request.headers["Authorization"].split(' ')[0]
    #         parse_token(token)
    #     else
    #         return {
    #             :message => "No Authorization header"
    #         }
    #     end
    # end

    # def parse_token(token)
    #     #decode the token and ruturn the user from the encoded data
    #     user_from_token = JWT.decode(token, nil, false)[0]["user_id"]
    #     byebug
    #     #return false if the token is bullshit
    # end

end

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
    #     if user.valid?
    #         token = JWT.encode({ user_id: user.id }, nil, 'none')
    #         render :json => {user: user, experiences: user.experiences, jwt: token, likes: user.likes}, status: 200
    #         else
    #         render :json => {
    #             :message => "Please try again"
    #         }, status: 400
    #         end
    # end

end

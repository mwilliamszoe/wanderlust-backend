class ApplicationController < ActionController::API

    def login
        user = User.find_or_create_by(email: params[:email])
        if !user.password_digest
            user.password = params[:password]
            user.save
        end
        if user && user.authenticate(params[:password])
        token = JWT.encode({ user_id: user.id }, nil, 'none')
        render :json => {user: user, liked_experiences: user.liked_experiences, experience: user.experiences, jwt: token,}, status: 200
        # render :json => @users.to_json(:include => { :liked_experiences => {:include =>:user}, :experiences })
        # render json: @user.to_json(include: [{liked_experiences: {include: :user}}, :experiences])

        else
        render :json => {
            :message => "Invalid credentials"
        }, status: 400
        end
    end


end

class UsersController < ApplicationController
    def profile
    end

    def sign_up
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to "/"
        else
        render :sign_up
    end
end
    private
    def user_params
        params.require(:user).permit(:email, 
                                    :password, 
                                    :password_confirmation,
                                    :account)

    end

end

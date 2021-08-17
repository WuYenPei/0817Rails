require 'digest'

class SessionsController < ApplicationController
    def create
        #驗證 email & password
        pw = user_params[:password]
        salted_pw = "xyz#{pw}827128#{pw}82-12j23h"
        hashed_password = Digest::SHA1.hexdigest(salted_pw)


        user = User.find_by(email: user_params[:email],
                            password: hashed_password)

        if user
            #成功 =>發 sessions
            redirect_to "/"
        else
            redirect_to "/usere/sign_in"
        end
    end


    private
    def user_params
        params.require(:user).permit(:email, :password)
    end
end

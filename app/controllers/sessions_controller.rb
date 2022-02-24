class SessionsController < ApplicationController

    def new

    end

    def create
        #How do we check
        @user = User.where({ email: params["email"] })[0]
        if @user
            if BCrypt::Password.new(@user.password) == params["password"]
            flash[:notice] = "You logged in!"
             redirect_to "/companies"
            else
                flash[:notice] = "Wrong Password!"
                redirect_to "/sessions/new" 
            end
       else
            flash[:notice] = "Create an account!"
            redirect_to "/users/new"
           
       end
    end
end

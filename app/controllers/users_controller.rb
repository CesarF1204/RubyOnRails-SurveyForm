class UsersController < ApplicationController
    def create
        session[:user] = user_params
        session[:count] += 1 
        flash[:submitted] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now."
        redirect_to('/result')
    end
    private
        def user_params
            params.require(:user).permit(:name, :location, :language, :comment)
        end
end

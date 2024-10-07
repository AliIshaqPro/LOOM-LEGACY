class SignupController < ApplicationController
    def index
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
  
      if @user.save
        redirect_to root_path, notice: "User was successfully created."
      else
        render :error, status: :unprocessable_entity
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :age, :date_of_birth, :address, :contact_number)
    end
  end
  
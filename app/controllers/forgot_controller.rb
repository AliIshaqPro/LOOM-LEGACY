class ForgotController < ApplicationController
    def new 
    end

    def create
        @accountant = Accountant.find_by(email: params[:email])

        if @accountant.present?
            PasswordMailer.with(accountant: @accountant).reset.deliver_later

        end
        redirect_to root_path, notice: "If Account woth this email is present, We have sent email to Your email Account"
    end

    def index
        
    end


end
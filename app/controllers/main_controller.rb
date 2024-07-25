class AccountantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def new
    @accountant = Accountant.new
  end

  def show
    @accountant = Accountant.find(params[:id])
  end

  def create_session
    @accountant = Accountant.find_by(email: accountant_params[:email])

    if @accountant && @accountant.valid_password?(accountant_params[:password])
      sign_in @accountant  # Assuming you have a sign_in method defined elsewhere
      redirect_to root_path, notice: 'Successfully logged in'
    else
      flash[:alert] = 'Invalid email or password'
      render :new_session
    end
  end

  private

  def accountant_params
    params.require(:accountant).permit(:email, :password)
  end

  def record_not_found
    flash[:alert] = 'Accountant not found'
    redirect_to root_path
  end
end

class BoardMembersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def new
    @board_members = Board_members.new
  end

  def show
    @board_members = Board_members.find(params[:id])
  end

  def create
    @board_members = Board_members.find_by(email: params[:board_members][:email])

    if @board_members && @board_members.valid_password?(params[:board_members][:password])
      sign_in @board_members  # Sign in the board_members using Devise method
      render :show, notice: 'Board_members was successfully created.'
    else
      flash[:alert] = 'Invalid email or password'
      render :new
    end
  end

  private

  def board_members_params
    params.require(:board_members).permit(:name, :email, :password, :password_confirmation)
  end

  def record_not_found
    flash[:alert] = "Board_members not found"
    redirect_to root_path
  end

end

class UserController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
  end




  private
    # Use callbacks to share common setup or constraints between actions.
  def set_user
      @user = User.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
     params.require(:user).permit(:first_name, :last_name, :password)
  end
end

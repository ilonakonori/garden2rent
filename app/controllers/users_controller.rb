class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @user = User.find_by(first_name: params[:first_name])
    authorize @user
  end
end

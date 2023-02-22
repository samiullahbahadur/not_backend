class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    
    @user = User.create!(user_params)
    if @user.save
        render json: { status: 201, message: 'User created successfully!' }
    else
        render json: { status: 401, message: 'User did not created successfully!'}
    end
  end
  private
  def user_params
    params.permit(:name,  :sector, :status )
  end
end

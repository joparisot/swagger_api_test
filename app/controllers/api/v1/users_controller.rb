class Api::V1::UsersController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index ]

  def index
    @users = policy_scope(User.all)
    authorize @users
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end
end

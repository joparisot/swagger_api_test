class Api::V1::UsersController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index ]
  include Swagger::Docs::ImpotentMethods

  swagger_controller :users, "User Management"

  swagger_api :index do
    summary 'Returns all signatures'
    notes 'Notes...'
  end

  swagger_api :show do
    summary 'Returns last signature of one specific user'
    notes 'Notes...'
  end

  def index
    @users = policy_scope(User.all)
    authorize @users
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end
end

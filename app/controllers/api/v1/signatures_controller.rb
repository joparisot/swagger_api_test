class Api::V1::SignaturesController < Api::V1::BaseController
  def index
    @signatures = policy_scope(Signature.all)
  end

  def show
    @signature = Signature.find(params[:id])
    authorize @signature
  end
end

# Need to find a solution to show the last signature of a user (index, show?)

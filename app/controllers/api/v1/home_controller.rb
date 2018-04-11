class Api::V1::HomeController < Api::ApplicationController
  before_action :authenticate_request!

  def index
    render json: current_user.to_json
  end
end
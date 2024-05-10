class MeController < ApplicationController
  def index
    resource_owner_id = doorkeeper_token&.resource_owner_id
    user = User.find(resource_owner_id)

    render json: user
  end
end
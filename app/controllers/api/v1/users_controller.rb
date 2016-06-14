class Api::V1::UsersController < ApplicationController

  def create
    @token = create_params
    render :json @token
  end

  private

    def create_params
      params.require(:user).permit[:code]
    end
end

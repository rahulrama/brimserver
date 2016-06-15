class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def instagram
    @user = User.from_omniauth(request)

    if true
      render json: { data: @user, message: "We are good..."}, :event => :authentication
    else
      render json: {error: "Not working"}
    end
  end

  def failure
    redirect_to root_path
  end
end
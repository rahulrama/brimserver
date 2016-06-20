class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::User

  protect_from_forgery with: :null_session

  def self.helper_method(*args)
  end

  def self.hide_action(*args)
  end
end

class ApplicationController < ActionController::Base

  # def self.allow_cors(*methods)
  #   before_filter :cors_before_filter, :only => methods

  #   # Rails recommends to use :null_session for APIs
  #   protect_from_forgery with: :null_session, :only => methods
  # end

  # def cors_before_filter
  #   # Check that the `Origin` field matches our front-end client host
  #   if /\Ahttp?:\/\/localhost:8000\z/ =~ request.headers['Origin']
  #     headers['Access-Control-Allow-Origin'] = request.headers['Origin']
  #   end
  # end

  def self.helper_method(*args)
  end
  def self.hide_action(*args)
  end
end

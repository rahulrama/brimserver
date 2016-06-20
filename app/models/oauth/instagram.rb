module Oauth
  class Instagram < Oauth::Base
    ACCESS_TOKEN_URL = 'https://api.instagram.com/oauth/access_token'

    def get_data
      response = @client.get( access_token: @access_token )
      @data = JSON.parse(response.body).with_indifferent_access
      @uid = @data[:user][:id]
      @data
    end

    def formatted_user_data
      {
        provider:        'instagram',
        token:            @access_token,
        uid:              @data['id']
      }
    end

  end
end
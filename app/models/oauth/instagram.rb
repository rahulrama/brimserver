module Oauth
  class Instagram < Oauth::Base
    ACCESS_TOKEN_URL = 'https://api.instagram.com/oauth/access_token'
    DATA_URL =     'https://api.instagram.com/v1/users/self/'


    def get_data
      response = @client.get(DATA_URL, access_token: @access_token)
      @data = JSON.parse(response.body).with_indifferent_access
      @uid = @data[:id] ||= @data[:sub]
      @data
    end

    def formatted_user_data
      {
        provider:       'instagram',
        token:          @access_token,
        uid:            @data['id'],
      }
    end

  end
end

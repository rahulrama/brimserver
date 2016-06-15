class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :searches

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:instagram]

  def email_required? 
    false
  end

  def self.from_omniauth(auth)
    auth = auth.env["omniauth.auth"]
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.uid = auth.uid
      # user.email = FFaker::Internet.email 
      user.provider = auth.provider 
      user.username = auth.info.nickname 
      user.password = Devise.friendly_token[0,20]
    end
      # User.create(username: response.info.nickname, password: (Devise.friendly_token[0,20]))
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :searches

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:instagram]

  def self.from_omniauth(auth)
    response = auth.env["omniauth.auth"].credentials
    # User.create(email: auth.code, password: "123456", password_confirmation: "123456" )
  end
end

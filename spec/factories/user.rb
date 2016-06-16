FactoryGirl.define do
  providers = ["Instagram", "Google"]
  factory :user do
    username { FFaker::InternetSE.user_name_random }
    email { FFaker::Internet.email }
    provider { providers.sample }
    uid { FFaker::PhoneNumber.area_code }
    password "123456"
    password_confirmation "123456"
  end
end
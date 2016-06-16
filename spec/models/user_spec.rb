describe User, type: :model do
  let(:instagram_user) { FactoryGirl.create :user}

  it{ should have_many(:searches) }

  it 'creates new omniauth user' do
    expect{ FactoryGirl.create(:user) }.to change{ User.count }.by(1)
  end

  context '#from_omniauth' do
    it 'creates user from auth callback' do
      nickname = OpenStruct.new({ nickname: "brim_brom" })
      token = OpenStruct.new({ token: "fsd6fs5df6sd6f8a"})
      response = { provider: "Instagram", uid: 1246, info: nickname , credentials: token }
      auth = OpenStruct.new response
      expect{ User.from_omniauth(auth) }.to change{ User.count }.by(1)
    end
  end

end
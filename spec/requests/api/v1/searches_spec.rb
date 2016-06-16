# describe "Search API" do
#   it 'saves a search' do

#     user = FactoryGirl.create(:user)
#     search = user.searches.create
#     tag = FactoryGirl.create(:tag)

#     search.tags << tag

#     uri = URI("http://localhost:3000")

#     response = Net::HTTP.get(uri)

#     expect(response).to be_an_instance_of(String)

#     # post api_user_searches_path(user)

#     # test for the 200 status-code
#     expect(response).to be_success

#     # check that the message attributes are the same.
#     expect(json['tag']).to eq(search.tags.first.tag)

#     # ensure that private attributes aren't serialized
#     # expect(json['private_attr']).to eq(nil)
#   end
# end
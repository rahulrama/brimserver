describe "Search API" do
  it 'saves a search' do

    search = FactoryGirl.create(:search)
    tag = FactoryGirl.create(:tag)
    search.tags << tag

    post api_user_searches_path

    # test for the 200 status-code
    expect(response).to be_success

    # check that the message attributes are the same.
    expect(json['tag']).to eq(search.tags.first.tag)

    # ensure that private attributes aren't serialized
    # expect(json['private_attr']).to eq(nil)
  end
end
require 'rails_helper'

RSpec.describe User, type: :model do
  it "creates user correctly" do

    raw_info = OpenStruct.new({"provider"=>"twitch",
 "uid"=>115671636,
 "info"=> OpenStruct.new(
  {"name"=>"wasabimation",
   "email"=>"Iamwasabi@gmail.com",
   "nickname"=>"wasabimation",
   "description"=>"I watch streams of several games.",
   "image"=>
    "https://static-cdn.jtvnw.net/jtv_user_pictures/wasabimation-profile_image-060c64517046b1ca-300x300.jpeg",
   "urls"=>{"Twitch"=>"http://www.twitch.tv/wasabimation"}}),
 "credentials"=> OpenStruct.new({"token"=>"jqhe1uhr7gi1y3098yuik18szij28w", "expires"=>false}),
 "extra"=> OpenStruct.new(
  {"raw_info"=> OpenStruct.new(
    {"display_name"=>"wasabimation",
     "_id"=>115671636,
     "name"=>"wasabimation",
     "type"=>"user",
     "bio"=>"I watch streams of several games.",
     "created_at"=>"2016-02-13T03:56:49Z",
     "updated_at"=>"2016-04-20T00:31:09Z",
     "logo"=>
      "https://static-cdn.jtvnw.net/jtv_user_pictures/wasabimation-profile_image-060c64517046b1ca-300x300.jpeg",
     "_links"=>{"self"=>"https://api.twitch.tv/kraken/users/wasabimation"},
     "email"=>"Iamwasabi@gmail.com",
     "partnered"=>false,
     "notifications"=>{"push"=>false, "email"=>false}})})})

     data_in = OpenStruct.new(raw_info)
     User.from_omniauth(data_in)
     user = User.first

    expect(user.name).to eq("wasabimation")
    expect(user.methods).to_not include("extra_fake_method")
  end
end

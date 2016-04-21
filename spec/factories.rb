FactoryGirl.define do
  factory :card do
    name "MyString"
    manacost "MyString"
    colors "MyString"
    cmc 1
    type ""
    rarity "MyString"
    set "MyString"
    text "MyString"
    flavor "MyString"
    multiverseid "MyString"
    power 1
    toughness 1
    imageUrl "MyString"
    layout "MyString"
    names "MyString"
  end
  factory :user do
    uid "MyString"
    name "MyString"
    display_name "MyString"
    image "MyString"
    oauth_token "MyString"
  end
end
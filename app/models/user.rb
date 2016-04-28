class User < ActiveRecord::Base
  # has_one :deck
  # has_many :cards, through: :deck
# attr_reader :uid, :name, :display_name, :image, :oauth_token
  def self.from_omniauth(auth_info)
    where(uid: auth_info[:uid]).first_or_create do |new_user|
      new_user.uid                = auth_info.uid
      new_user.name               = auth_info.extra.raw_info.name
      new_user.display_name       = auth_info.extra.raw_info.display_name
      new_user.image              = auth_info.info.image
      new_user.oauth_token        = auth_info.credentials.token
    end
  end

end

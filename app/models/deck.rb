class Deck < ActiveRecord::Base
  belongs_to :user
  belongs_to :cards
end

class Lobby < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :rooms
end

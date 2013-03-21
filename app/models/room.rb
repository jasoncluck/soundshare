class Room < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :lobby
  has_many :tracks
end

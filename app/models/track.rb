class Room < ActiveRecord::Base
  attr_accessible :title, :cue, :length
  belongs_to :room
end

class Room < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :lobby
end

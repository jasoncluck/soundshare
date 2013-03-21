class Query < ActiveRecord::Base
	attr_accessible :sc_user, :sc_track, :sc_bpm
	has_many :tracks
	belongs_to :room
end
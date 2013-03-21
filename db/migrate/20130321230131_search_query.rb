class SearchQuery < ActiveRecord::Migration
  def up
  	create_table :queries do |t|
  		t.string :sc_user
  		t.string :sc_track
  		t.integer :sc_bpm
  	end
  end

  def down
  	drop_table :queries
  end
end

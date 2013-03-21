class CreateTracks < ActiveRecord::Migration
  def up
  	create_table :tracks do |t|
  		t.string :name
  		t.time :cue
  		t.time :length
      	t.timestamps
      end
  end

  def down
  	drop_table :tracks
  end
end

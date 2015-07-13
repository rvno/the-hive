class CreateFriendships < ActiveRecord::Migration
  def change
  	create_table :friendships do |t|
  		t.integer :friend_id

  		t.references :bumblebee, index: true
  	end
  end
end

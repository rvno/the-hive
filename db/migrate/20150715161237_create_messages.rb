class CreateMessages < ActiveRecord::Migration
  def change
  	create_table :messages do |t|
  		t.integer :sender_id
  		t.integer :recipient_id
  		t.text :content

  		t.timestamps
  		t.references :bumblebee, index: true
  	end
  end
end

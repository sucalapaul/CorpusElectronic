class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.integer :message_id
      t.integer :participant_id

      t.timestamps
    end
  end
end

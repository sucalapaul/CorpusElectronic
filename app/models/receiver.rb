class Receiver < ActiveRecord::Base
	belongs_to :participant
	belongs_to :message
	
  attr_accessible :message_id, :participant_id
end

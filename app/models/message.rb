class Message < ActiveRecord::Base

	belongs_to :category
	belongs_to :relationship
	belongs_to :participant
	belongs_to :text_type
	has_many :receivers

  attr_accessible :category_id, :date, :details, :relationship_id, :sender_id, :subject, :text, :text_type_id
end

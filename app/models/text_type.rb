class TextType < ActiveRecord::Base
	has_many :messages
  attr_accessible :name
end

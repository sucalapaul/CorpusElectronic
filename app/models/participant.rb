class Participant < ActiveRecord::Base
	has_many :receivers
	
  attr_accessible :age, :job_id, :location_id, :name, :sex
end

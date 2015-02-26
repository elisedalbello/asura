class Improvement < ActiveRecord::Base
	belongs_to :project
	has_many :states
end

class Improvement < ActiveRecord::Base
	belongs_to :project
	has_and_belongs_to_many :items
	has_many :states
end

class State < ActiveRecord::Base
	belongs_to :improvement
	has_many :items
end

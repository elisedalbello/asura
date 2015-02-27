class Item < ActiveRecord::Base
	belongs_to :state
	has_many :information
	has_and_belongs_to_many :improvements
end

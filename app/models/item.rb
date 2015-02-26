class Item < ActiveRecord::Base
	has_many :information
	belongs_to :state
	has_and_belongs_to_many :improvements
end

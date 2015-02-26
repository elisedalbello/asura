class Item < ActiveRecord::Base
	has_many :information
	has_one :state
	has_and_belongs_to_many :improvements
end

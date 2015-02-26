class Item < ActiveRecord::Base
	has_many :information
	has_one :state
end

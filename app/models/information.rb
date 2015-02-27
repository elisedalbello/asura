class Information < ActiveRecord::Base
	belongs_to :item

	def self.name_from_items(items)
		Information.select("information.name").where("information.item_id in (?) and information.name is not null",items.map(&:id)).distinct
	end
end

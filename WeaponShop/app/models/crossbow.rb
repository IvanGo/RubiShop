class Crossbow < ActiveRecord::Base
	belongs_to :crossbowtype
	has_attached_file :mainphoto

	has_many :line_items

	before_destroy :ensure_not_referenced_by_any_line_item

	def ensure_not_referenced_by_any_line_item
		if line_items.count.zero?
			return true
		else
			errors.add(:base, 'Line items present')
			return false
		end
	end
end

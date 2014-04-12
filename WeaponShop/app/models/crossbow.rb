class Crossbow < ActiveRecord::Base
	belongs_to :crossbowtype

	has_attached_file :mainphoto, :default_url => "/assets/crossbow_view.jpg"
	attr_accessor :mainphoto_file_name
  	attr_accessor :mainphoto_content_type
  	attr_accessor :mainphoto_file_size

  	validates_attachment_content_type :mainphoto, :content_type => ["image/jpg", "image/jpeg", "image/png"]

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

	def self.get_crossbows_with_type(idtype)
		return Crossbow.where("crossbowtype_id = " + idtype.to_s)
	end
end

class LineItem < ActiveRecord::Base
	belongs_to :bow
	belongs_to :crossbow
	belongs_to :cart
end

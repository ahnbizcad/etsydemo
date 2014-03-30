class Order < ActiveRecord::Base
	validates :address, :city, :state, presence: true		
	validates :listing_id, :buyer_id, :seller_id, presence: true
	#validates :seller_id, :current_id, uniqueness: true

	belongs_to :listing
	belongs_to :buyer,  class_name: "User"
	belongs_to :seller, class_name: "User"
end

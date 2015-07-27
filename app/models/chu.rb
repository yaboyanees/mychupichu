class Chu < ActiveRecord::Base
	BASE_NAMES = ["Fort Hood", "Fort Gordon", "Fort Stewart", "Fort Benning", "Fort Irwin", "Fort Sill",
				  "Fort Bliss", "Fort Drum", "Fort Lewis"]
	
	belongs_to :user
	
	attachment :image1, type: :image
	attachment :image2, type: :image
	attachment :image3, type: :image
	attachment :image4, type: :image
	attachment :image5, type: :image
	
	geocoded_by :address
	after_validation :geocode
	
	def self.search(query)
  		where("base like ?", "%#{query}%") 
	end
end

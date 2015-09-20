class Chu < ActiveRecord::Base
	BASE_NAMES = ["Hood", "Bragg", "Stewart", "Benning", "Bliss", "Sill", "Gordon",
				  "Drum", "Lewis", "Carson", "Irwin", "Knox", "Lee", "Meade", "Belvoir",
				  "Riley", "Polk", "Wainright", "Shafter", "Eustis", "Jackson", "Huachuca",
				  "Richardson", "Sam Houston", "Wainwright", "Rucker", "Detrick"]
	
	belongs_to :user
	has_many :comments
	
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

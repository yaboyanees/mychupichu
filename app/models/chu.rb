class Chu < ActiveRecord::Base
	BASE_NAMES = ["Fort Hood", "Fort Gordon", "Fort Stewart", "Fort Benning", "Fort Irwin", "Fort Sill",
				  "Fort Bliss", "Fort Drum", "Fort Lewis"]
	
	belongs_to :user
	
	geocoded_by :address
	after_validation :geocode
	
	def self.search(query)
  		where("base like ?", "%#{query}%") 
	end
end

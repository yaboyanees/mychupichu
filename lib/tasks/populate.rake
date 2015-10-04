namespace :db do
  	task populate: :environment do
  	require 'ffaker'
		#facebook users
		2500.times do
			 User.create(
				name: FFaker::Name.name,
				provider: 'facebook',
				uid: FFaker::SSNSE.ssn,
				email: FFaker::Internet.free_email,
				password: 'password',
				profile_url: 'https://www.facebook.com/app_scoped_user_id/10153405514076264/'				
			)
		end
		
		#linkedin users
		2500.times do
			 User.create(
				name: FFaker::Name.name,
				provider: 'linkedin',
				uid: FFaker::SSNSE.ssn,
				email: FFaker::Internet.free_email,
				password: 'password',
				profile_url: 'https://www.linkedin.com/in/aneesmerzi/'				
			)
		end
		
		#chus
		1000.times do 
			 Chu.create(
				tagline: FFaker::Lorem.phrase,
				list_type: 'house',
				available_date: FFaker::Time.date,
				latitude: FFaker::Geolocation.lat,
				longitude: FFaker::Geolocation.lng,
				address: FFaker::AddressAU.full_address,
				base: base_name.sample,
				description: FFaker::BaconIpsum.paragraphs.sample,
				bedroom: bedroomNum.sample,
				bathroom: bathroomNum.sample,
				price: prices.sample,
				sec_deposit: 750,
				cleaning_fee: 250,
				smoking: FFaker::Boolean.sample,
				pet: FFaker::Boolean.sample, 
				additional_info: FFaker::BaconIpsum.sentences.sample,
				user_id: userchu.sample			
			)
		end

		#comments
		1000.times do 
			 Comment.create(
				rating1: r1.sample,
				rating2: r1.sample,
				rate_text: FFaker::BaconIpsum.paragraphs.sample,
				chu_id: chu.sample,
				user_id: usercomment.sample 		
			)
		end

	end
end

def base_name
	["Hood","Bragg","Stewart","Benning","Bliss","Sill","Gordon","Drum","Lewis","Carson","Irwin","Knox","Lee","Meade","Belvoir","Riley","Polk","Wainright","Shafter","Jackson","Huachuca","Richardson","Sam Houston","Wainwright"].to_a.shuffle
end

def bedroomNum
	[2,3,4].to_a.shuffle
end

def bathroomNum
	[2,3,4].to_a.shuffle
end

def prices
	[1150,1250,1350].to_a.shuffle
end

def r1
	[1,2,3,4,5].to_a.shuffle
end

def chu
	(1...1000).to_a.shuffle
end

def userchu
	(1..1000).to_a
end

def usercomment
	(1001..2000).to_a
end
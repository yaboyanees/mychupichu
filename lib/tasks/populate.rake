namespace :db do
  	task populate: :environment do
  	require 'ffaker'

		#500 facebook users
		500.times do
			 User.create(
				name: FFaker::Name.name,
				provider: 'facebook',
				uid: FFaker::SSNSE.ssn,
				email: FFaker::Internet.free_email,
				password: 'password',
				profile_url: 'https://www.facebook.com/app_scoped_user_id/10153405514076264/'				
			)
		end
		
		#500 linkedin users
		500.times do
			 User.create(
				name: FFaker::Name.name,
				provider: 'linkedin',
				uid: FFaker::SSNSE.ssn,
				email: FFaker::Internet.free_email,
				password: 'password',
				profile_url: 'https://www.linkedin.com/in/aneesmerzi/'				
			)
		end
		
		#500 chus
		500.times do 
			 Chu.create(
				tagline: FFaker::Lorem.phrase,
				image1_id: cover.sample,
				image2_id: "1e47c026e08f9e2fae979367bbb300e3e239edb3cd10d483568853940f9f",
				image3_id: "3aae31d7cbac746e8e78fba38d9df4448b28f65e09eb21f89ee8d30d59ea",
				image4_id: "173bf5bb6e814036696cf8656eda5bc1c27e9561f293f44e0fbc78d0d1c0",
				image5_id: "3e6be3f4ba83f7e19e74fe36a815bae1b17e176dcdf0f9a207cb512b2b13",
				image6_id: "f7c4c8240e08ac269ad8e124091154114f1d419848f4a5ea3c9df5bb16f5",
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

		#1000 comments
		1000.times do 
			 Comment.create(
				rating1: FFaker::Boolean.sample,
				rating2: FFaker::Boolean.sample,
				rate_text: FFaker::BaconIpsum.paragraphs.sample,
				chu_id: chu.sample,
				user_id: usercomment.sample 		
			)
		end

	end
end

def base_name
	["Hood","Bragg","Stewart","Benning","Bliss","Sill"].to_a.shuffle
end

def bedroomNum
	[1,2,3].to_a.shuffle
end

def bathroomNum
	[1,2,3].to_a.shuffle
end

def prices
	[1150,1250,1350].to_a.shuffle
end

def userchu
	(1..500).to_a
end

def chu
	(1...500).to_a.shuffle
end

def usercomment
	(1..1000).to_a
end

def cover
	["5cbbea7063bc71cb9e5db3dbcafc7db0a1a89c28623a36e37f1a1424a851","a76de7e4fd89251c1aa70c831345ce71c974ab1463bdee5c8e3fca719db4","e00b142a3b68c463c0ad7424ae48bf5f201784961dd4243e9341ea77ea0f"].to_a.shuffle
end
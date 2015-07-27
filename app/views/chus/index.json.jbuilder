json.array!(@chus) do |chu|
  json.extract! chu, :id, :tagline, :type, :available_date, :latitude, :longitude, :address, :base, :description, :bedroom, :bathroom, :price, :sec_deposit, :cleaning_fee, :smoking, :pet, :additional_info, :image1, :image2, :image3, :image4, :image5, :user_id
  json.url chu_url(chu, format: :json)
end

class CreateChus < ActiveRecord::Migration
  def change
    create_table :chus do |t|
      t.string :tagline
      t.string :image1_id
      t.string :image2_id
      t.string :image3_id
      t.string :list_type
      t.date :available_date
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :base
      t.text :description
      t.integer :bedroom
      t.integer :bathroom
      t.integer :price
      t.integer :sec_deposit
      t.integer :cleaning_fee
      t.boolean :smoking
      t.boolean :pet
      t.text :additional_info
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

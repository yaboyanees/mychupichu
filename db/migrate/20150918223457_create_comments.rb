class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :rating1
      t.integer :rating2
      t.text :rate_text
      t.integer :chu_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

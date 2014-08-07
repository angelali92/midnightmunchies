class CreateEateries < ActiveRecord::Migration
  def change
    create_table :eateries do |t|
      t.string :name
      t.string :address
      t.string :lat_long
      t.integer :phone_num
      t.string :hours
      t.string :image_url
      t.integer :cost
      t.integer :rating
      t.string :type_food
      t.string :reviews
      t.string :pop_items

      t.timestamps
    end
  end
end

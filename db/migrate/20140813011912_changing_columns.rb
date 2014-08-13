class ChangingColumns < ActiveRecord::Migration
  def change
  	remove_column :eateries, :lat_long
  	remove_column :eateries, :hours
  	remove_column :eateries, :cost
  	remove_column :eateries, :type_food
  	remove_column :eateries, :delivery
  	remove_column :eateries, :market
  	remove_column :eateries, :reviews
  	remove_column :eateries, :pop_items
  	change_column :eateries, :phone_num, :string
  	add_column :eateries, :lat, :float
  	add_column :eateries, :long, :float
  	add_column :eateries, :lobby_hours, :string
  end
end

class AddFieldsToFavorites < ActiveRecord::Migration
  def change
  	add_column :favorites, :name, :string
  	add_column :favorites, :description, :text
  end
end

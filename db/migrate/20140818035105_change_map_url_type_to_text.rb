class ChangeMapUrlTypeToText < ActiveRecord::Migration
  def change
  	change_column :eateries, :map_url, :text
  end
end

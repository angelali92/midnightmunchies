class AddEmbeddedMapUrlColumnToEatery < ActiveRecord::Migration
  def change
  	add_column :eateries, :map_url, :string
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :default_loc
      t.string :default_latlong

      t.timestamps
    end
  end
end

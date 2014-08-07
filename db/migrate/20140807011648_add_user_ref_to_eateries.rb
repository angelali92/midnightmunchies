class AddUserRefToEateries < ActiveRecord::Migration
  def change
    add_reference :eateries, :user, index: true
  end
end

class AddEateryRefToAppointments < ActiveRecord::Migration
  def change
    add_reference :favorites, :eatery, index: true
  end
end

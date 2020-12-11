class CreateAddFoodPairingToBeers < ActiveRecord::Migration[6.0]
  def change
    add_column :beers, :food_pairings, :text, array: true, default: []
  end
end

class CreateAddFoodPairingToBeers < ActiveRecord::Migration[6.0]
  def change
    add_column :beers, :food_pairing, :text, array: true, default: []
  end
end

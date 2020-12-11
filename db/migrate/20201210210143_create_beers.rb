class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :tag_line
      t.string :description
      t.string :image_url
      t.string :yeast
      t.float :abv
      t.integer :likes
      t.integer :dislikes
      t.timestamps
    end
  end
end

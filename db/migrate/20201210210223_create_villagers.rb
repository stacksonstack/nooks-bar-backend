class CreateVillagers < ActiveRecord::Migration[6.0]
  def change
    create_table :villagers do |t|
      t.string :image_url
      t.string :name
      t.timestamps
    end
  end
end


class CreateUserGames < ActiveRecord::Migration[6.0]
  def change
    create_table :user_games do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :wins
      t.integer :losses
      t.timestamps
    end
  end
end
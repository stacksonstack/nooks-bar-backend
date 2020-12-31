class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :password
      t.integer :wins
      t.integer :losses
      t.timestamps
    end
  end
end

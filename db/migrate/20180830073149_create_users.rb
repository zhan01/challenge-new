class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password
      t.string :country
      t.boolean :newsletter
      t.integer :role, default: 0
      t.string :avatar

      t.timestamps
    end
  end
end

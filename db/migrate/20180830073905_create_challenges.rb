class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.date :deadline
      t.references :user
      t.integer :to_user_id
      t.string :before_photo
      t.string :before_video
      t.string :after_photo
      t.string :after_video
      t.boolean :public, default: true
      t.integer :views

      t.timestamps
    end
  end
end

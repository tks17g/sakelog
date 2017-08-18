class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text  :tweet
      t.string :nickname
      t.string :shop
      t.string :shop_url
      t.string :img
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

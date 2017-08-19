class AddImgUrlToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :imgurl, :string
  end
end

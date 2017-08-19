class Tweet < ActiveRecord::Base

  belongs_to :user
  mount_uploader :img, ImgUploader

  validates_presence_of :text, :img
end

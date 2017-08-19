class Tweet < ActiveRecord::Base

  belongs_to :user
  mount_uploader :img, ImgUploader

  validates :text, :presence => {:message =>'は必須です'}
  validates :img, :presence => {:message =>'は必須です'}

end

class Picture < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :title,:image,:content, presence: true
end

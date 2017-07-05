class Picture < ActiveRecord::Base
    belongs_to :user
    mount_uploader :image, ImageUploader
    validates :title,:image, presence: true
    validates :title, length: { maximum: 35 }
    default_scope -> { order(created_at: :desc) }
end

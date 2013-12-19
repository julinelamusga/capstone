class Masterpiece < ActiveRecord::Base
  attr_accessible :title
  belongs_to :user
  belongs_to :portfolio
  mount_uploader :image, MasterpieceImageUploader
end

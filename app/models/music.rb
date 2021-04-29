class Music < ApplicationRecord
  belongs_to :user
  has_one_attached :sound
end

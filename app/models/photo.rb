class Photo < ApplicationRecord
  validates :caption, presence: true
end

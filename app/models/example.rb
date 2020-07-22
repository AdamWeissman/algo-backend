class Example < ApplicationRecord
  belongs_to :algorithm
  validates :content, length: {minimum: 10}, allow_blank: false
end

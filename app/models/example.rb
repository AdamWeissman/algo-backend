class Example < ApplicationRecord
  belongs_to :algorithm
  validates :example, length: {minimum: 10, }, allow_blank: false
end

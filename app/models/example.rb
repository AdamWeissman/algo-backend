class Example < ApplicationRecord
  belongs_to :algorithm
  belongs_to :datastructure
  validates :example, length: {minimum: 10, }, allow_blank: false
end

class Algorithm < ApplicationRecord
  has_many :examples, dependent: :destroy
end

class Nha < ApplicationRecord
  has_many :users
  belongs_to :hoadon
end

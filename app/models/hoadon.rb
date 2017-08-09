class Hoadon < ApplicationRecord
  belongs_to :user
  has_one :dien
  has_one :nuoc
  has_one :wifi
  has_one :nha
end

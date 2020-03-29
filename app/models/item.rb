class Item < ApplicationRecord
  has_many :estimates, through: :estimates_items
  has_many :estimates_items
end

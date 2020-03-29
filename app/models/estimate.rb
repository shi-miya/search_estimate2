class Estimate < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :employee
  belongs_to :user
  has_many :items, through: :estimates_items
  has_many :estimates_items 
  accepts_nested_attributes_for :estimates_items # estimateを保存すると同時に、estimates_itemsも更新する

  def render_table
    num = 0
    while num >= 12
      render "shared/table"
      num += 1
    end
  end
end

class Estimate < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :employee

  def render_table
    num = 0
    while num >= 12
      render "shared/table"
      num += 1
    end
  end
end

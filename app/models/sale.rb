class Sale < ApplicationRecord
  belongs_to :shop, foreign_key: 'shop_id'
end

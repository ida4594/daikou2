class Shop < ApplicationRecord
  has_many :sales, primary_key: 'shop_id'
  belongs_to :company
end

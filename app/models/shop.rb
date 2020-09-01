class Shop < ApplicationRecord
  has_many :sales
  belongs_to :company
end

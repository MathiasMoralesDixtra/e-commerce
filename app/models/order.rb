class Order < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :address, required: false
  has_many :order_products
  enum state:{progress:"P", completed:"C"}

  validates :user_id, presence: true, if: -> {is_cart?}
  validates :address, presence: true, unless: -> {is_cart?}
end

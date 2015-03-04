class Order < ActiveRecord::Base
  validates_formatting_of :customer_phone, using: :us_phone
end

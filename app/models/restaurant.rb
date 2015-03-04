class Restaurant < ActiveRecord::Base
  validates_formatting_of :phone, using: :us_phone
end

json.array!(@orders) do |order|
  json.extract! order, :id, :customer_name, :customer_phone, :customer_address, :restaurant_name, :restaurant_address, :status, :driver_name, :order_details, :total_before_fee, :total_after_fee, :complete
  json.url order_url(order, format: :json)
end

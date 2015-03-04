json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :phone, :address, :notes
  json.url customer_url(customer, format: :json)
end

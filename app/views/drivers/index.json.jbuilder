json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :phone
  json.url driver_url(driver, format: :json)
end

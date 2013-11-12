json.array!(@customers) do |customer|
  json.extract! customer, :username, :password, :email
  json.url customer_url(customer, format: :json)
end

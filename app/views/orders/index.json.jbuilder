json.array!(@orders) do |order|
  json.extract! order, :customer_id, :semester
  json.url order_url(order, format: :json)
end

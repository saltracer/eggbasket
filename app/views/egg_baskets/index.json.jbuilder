json.array!(@egg_baskets) do |egg_basket|
  json.extract! egg_basket, :id, :egg_count, :user_id
  json.url egg_basket_url(egg_basket, format: :json)
end

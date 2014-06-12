json.array!(@egg_clutches) do |egg_clutch|
  json.extract! egg_clutch, :id, :count, :egg_basket_id
  json.url egg_clutch_url(egg_clutch, format: :json)
end

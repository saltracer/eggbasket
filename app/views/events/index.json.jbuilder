json.array!(@events) do |event|
  json.extract! event, :id, :occurred_on, :egg_basket_id, :cost, :event_name_id
  json.url event_url(event, format: :json)
end

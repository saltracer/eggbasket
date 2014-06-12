json.array!(@event_names) do |event_name|
  json.extract! event_name, :id, :name
  json.url event_name_url(event_name, format: :json)
end

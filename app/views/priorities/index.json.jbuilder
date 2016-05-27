json.array!(@priorities) do |priority|
  json.extract! priority, :id, :screen_name, :ordering
  json.url priority_url(priority, format: :json)
end

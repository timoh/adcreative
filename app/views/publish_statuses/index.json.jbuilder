json.array!(@publish_statuses) do |publish_status|
  json.extract! publish_status, :id, :status_name, :ordering
  json.url publish_status_url(publish_status, format: :json)
end

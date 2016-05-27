json.array!(@banner_formats) do |banner_format|
  json.extract! banner_format, :id, :title, :height, :width
  json.url banner_format_url(banner_format, format: :json)
end

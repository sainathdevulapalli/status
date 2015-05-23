json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :name, :content
  json.url checkin_url(checkin, format: :json)
end

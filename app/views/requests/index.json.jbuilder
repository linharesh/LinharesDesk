json.array!(@requests) do |request|
  json.extract! request, :id, :title, :description, :sender, :senderemail, :isActive, :id
  json.url request_url(request, format: :json)
end

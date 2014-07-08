json.array!(@websites) do |website|
  json.extract! website, :id, :website, :owner, :manager, :name
  json.url website_url(website, format: :json)
end

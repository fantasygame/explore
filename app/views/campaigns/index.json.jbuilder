json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :name, :money
  json.url campaign_url(campaign, format: :json)
end

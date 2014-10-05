json.array!(@characters) do |character|
  json.extract! character, :id, :name, :exp, :user_id, :campaign_id
  json.url character_url(character, format: :json)
end

json.array!(@peeps) do |peep|
  json.extract! peep, :id, :name, :role
  json.url peep_url(peep, format: :json)
end

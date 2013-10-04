json.array!(@people) do |person|
  json.extract! person, :name, :title, :age, :misc
  json.url person_url(person, format: :json)
end

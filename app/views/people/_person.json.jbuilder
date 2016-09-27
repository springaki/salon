json.extract! person, :id, :karte_no, :name, :created_at, :updated_at
json.url person_url(person, format: :json)
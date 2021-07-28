json.extract! artefact, :id, :name, :artist, :date, :description, :dimensions, :price, :loaner_id, :created_at, :updated_at
json.url artefact_url(artefact, format: :json)

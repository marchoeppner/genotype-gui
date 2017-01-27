json.extract! diagnosis, :id, :name, :short_name, :summary, :inheritance, :evolution, :comment, :created_at, :updated_at
json.url diagnosis_url(diagnosis, format: :json)
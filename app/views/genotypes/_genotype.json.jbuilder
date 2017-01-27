json.extract! genotype, :id, :chromosome, :position, :reference, :allele, :genotype, :comment, :diagnosis_id, :created_at, :updated_at
json.url genotype_url(genotype, format: :json)
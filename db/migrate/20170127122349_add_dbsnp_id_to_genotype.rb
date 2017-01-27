class AddDbsnpIdToGenotype < ActiveRecord::Migration[5.0]
  def change
    add_column :genotypes, :dbsnp_id, :string
  end
end

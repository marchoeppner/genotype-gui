class AddChromosomeIdToGenotype < ActiveRecord::Migration[5.0]
  def change
    add_column :genotypes, :chromosome_id, :integer
  end
end

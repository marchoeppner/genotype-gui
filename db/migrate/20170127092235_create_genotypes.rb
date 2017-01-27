class CreateGenotypes < ActiveRecord::Migration[5.0]
  def change
    create_table :genotypes do |t|
      t.string :chromosome
      t.integer :position
      t.string :reference
      t.string :allele
      t.string :genotype
      t.string :comment
      t.integer :diagnosis_id

      t.timestamps
    end
  end
end

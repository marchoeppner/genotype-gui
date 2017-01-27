class AddCategoryIdToGenotype < ActiveRecord::Migration[5.0]
  def change
    add_column :genotypes, :category_id, :integer
  end
end

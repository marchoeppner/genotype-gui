class CreateDiagnoses < ActiveRecord::Migration[5.0]
  def change
    create_table :diagnoses do |t|
      t.string :name
      t.string :short_name
      t.text :summary
      t.text :inheritance
      t.text :evolution
      t.text :comment

      t.timestamps
    end
  end
end

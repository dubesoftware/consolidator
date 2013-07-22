class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :name
      t.integer :white_male
      t.integer :white_female
      t.integer :black_male
      t.integer :black_female
      t.references :company, index: true

      t.timestamps
    end
  end
end

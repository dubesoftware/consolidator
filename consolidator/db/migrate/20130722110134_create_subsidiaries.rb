class CreateSubsidiaries < ActiveRecord::Migration
  def change
    create_table :subsidiaries do |t|
      t.string :name
      t.references :company, index: true

      t.timestamps
    end
  end
end

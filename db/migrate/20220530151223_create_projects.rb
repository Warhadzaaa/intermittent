class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :description
      t.boolean :archived, default: false
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end

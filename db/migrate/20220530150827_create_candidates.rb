class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :sector
      t.string :role
      t.string :skills
      t.string :experiences
      t.string :description
      t.string :address
      t.boolean :availability, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

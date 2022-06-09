class RemoveExperiencesFromCandidates < ActiveRecord::Migration[7.0]
  def change
    remove_column :candidates, :experiences, :string
  end
end

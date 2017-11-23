class RemovePossibleMatchesFromMatches < ActiveRecord::Migration[5.1]
  def change
    remove_column :matches, :possible_matches
    remove_reference :matches, :possible_match

  end
end

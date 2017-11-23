class AddPossibleMatchesInPossibleMatches < ActiveRecord::Migration[5.1]
  def change

    add_column :possible_matches, :possible_matches, :integer, array: true, default: []
    

  end
end

class AddPossibleMatchToMatch < ActiveRecord::Migration[5.1]
  def change
    add_reference :matches, :possible_match, foreign_key: true
  end
end

class PossibleMatch < ApplicationRecord

  def array_population
    [2,3,4,5,6,7,8,9,10,11]
  end

  def self.members_of_class
   10
  end

  def possible_matches_method
    array_population.combination(2).to_a
  end

  def rest_of_possible_matches
    []
  end

end

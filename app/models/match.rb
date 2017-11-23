  class Match < ApplicationRecord


  def members_of_class
   10
  end

  def possible_matches_method

    array_population.combination(2).to_a

  end


  def rest_of_possible_matches

    []

  end


  def matching_algorithm

    all_combinations = rest_of_possible_matches

    all_combinations.shuffle!

    todays_match = all_combinations.pop

    all_combinations.shuffle!

    while todays_match.size < 10 do

      all_combinations.shuffle!

      possible_match = all_combinations.pop



      if (possible_match & todays_match).empty?

        todays_match.push(possible_match)

        todays_match.flatten!

      else

        all_combinations.push(possible_match)

      end

    end

    todays_match

  end

  def array_population
    [1,2,3,4,5,6,7,8,9,10]
  end

end

  class Match < ApplicationRecord

  def matching_algorithm(matches_array)

    rest_of_matches = matches_array

    all_combinations = matches_array

    all_combinations.shuffle!

    todays_match = all_combinations.pop

    all_combinations.shuffle!

    while todays_match.size < 10 do

      all_combinations.shuffle!

      possible_match = all_combinations.pop

      if (possible_match & todays_match).empty?

        todays_match.push(possible_match)

        todays_match.flatten!

        rest_of_matches.delete(possible_match)

      else

        all_combinations.push(possible_match)

      end

    end



    return todays_match, rest_of_matches

  end



end

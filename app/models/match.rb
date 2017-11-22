class Match < ApplicationRecord


  def members_of_class
   6
  end

  def matching_algorithm(date)
    byebug
    array_of_matches = array_population
  possible_matches = 5
    control_array = [1,2,3,4,5,6]
    control_array.each do |element|
      next if element = 0
      array_of_matches[element-1].each do |column|
        next if column = 0
        user1 = element-1
        array_of_matches[element-1][column] = 0
        user2 = array_of_matches[element-1][column]
        index = array_of_matches[user1-1].index {|x| x == user2 }
        array_of_matches[][index] = 0
      end
  end
end

  def array_population
    [[2,3,4,5,6],[1,3,4,5,6],[1,2,4,5,6],[1,2,3,5,6],[1,2,3,4,6],[1,2,3,4,5]]
  end



end

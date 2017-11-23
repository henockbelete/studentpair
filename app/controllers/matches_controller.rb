class MatchesController < ApplicationController
 before_action :authenticate_user!

    def index
      if !current_user.admin?
        flash[:notice] = 'You dont have permission'
        render 'pages/home'
      else
      matches = Match.all
      @all_matches = []
      matches.each do |match|
        @all_matches.push(match.day)
        id = match.match1
        @all_matches.push(User.find(id).first_name)
        id = match.match2
        @all_matches.push(User.find(id).first_name)
      end
    end
   end

    def new
      @match = Match.new
    end

    def create
      @match = Match.new
      possible_matches = PossibleMatch.first.possible_matches
      @todays_match , @possible_matches = @match.matching_algorithm(possible_matches)
      current_class_students = PossibleMatch.members_of_class/2
      current_class_students.times do
      @match = Match.new(match_params)
      match_day = @match.day
        @match.match1 = @todays_match.pop
        @match.match2 = @todays_match.pop
        @match.save
      end
      id = 1
      poss_match = PossibleMatch.find(id)
      poss_match = @possible_matches
    end

    private

    def match_params
      params.require(:match).permit(:day )
    end



end

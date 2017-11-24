class MatchesController < ApplicationController
 before_action :authenticate_user!

    def index
      if !current_user.admin?
        flash[:notice] = 'You dont have permission'
        render 'pages/home'
      else
      @all_matches = []
      @all_matches = Match.correlate_matches_to_users
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
        byebug
      end
      id = 1
      poss_match = PossibleMatch.find(id)
      poss_match.possible_matches = @possible_matches
      poss_match.save
    end

    private

    def match_params
      params.require(:match).permit(:day )
    end



end

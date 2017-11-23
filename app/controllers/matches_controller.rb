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
      @match = Match.new(match_params)
      possible_matches = PossibleMatch.first.possible_matches
      byebug
      @todays_match = @match.matching_algorithm(possible_matches)
      byebug
      @possible_matches = @match.matching_algorithm()
      byebug


      if @match.save
        redirect_to @matches
      else
        render 'users/admin/index.html.erb'
      end
    end

    private

    def match_params
      params.require(:match).permit(:day )
    end



end

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
      @match.matching_algorithm("12/12/2017")
    end

    def create
      if @match.save
        redirect_to @matches
      else
        render 'users/admin'
      end
    end


end

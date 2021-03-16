class SearchController < ApplicationController

  def index
    nation = params[:nation]
    @members = SearchFacade.find_members(nation)
  end 

end 
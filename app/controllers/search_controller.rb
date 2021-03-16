class SearchController < ApplicationController

  def index
    nation = params[:nation]
    @total = SearchService.nation_call(nation).count
    @members = SearchFacade.find_members(nation)
  end 

end 
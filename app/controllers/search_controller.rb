class SearchController < ApplicationController

  def index
    nation = params[:nation]
    format_nation = nation.split('_').map{ |name| name.capitalize}.join(' ')
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1')
    response = conn.get("characters?affiliation=#{format_nation}")
    @members = JSON.parse(response.body, symbolize_names: true)
    require 'pry'; binding.pry
  end 

end 
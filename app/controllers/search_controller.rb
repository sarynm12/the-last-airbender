class SearchController < ApplicationController

  def index
    nation = params[:nation]
    format_nation = nation.split('_').map{ |element| element.capitalize}.join(' ')
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1')
    response = conn.get("characters?affiliation=#{format_nation}")
    require 'pry'; binding.pry
  end 

end 
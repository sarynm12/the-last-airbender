class SearchFacade

  def self.find_members(nation)
    data = SearchService.nation_call(nation)
    @members = data.first(25).map do |member_attrs|
      Member.new(member_attrs)
    end 
      
    # format_nation = nation.split('_').map{ |name| name.capitalize}.join(' ')
    # conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1')
    # response = conn.get("characters?perPage=100?page=1&affiliation=#{format_nation}")
    # JSON.parse(response.body, symbolize_names: true)
  end 

end 
class SearchService 

  def self.nation_call(nation)
    format_nation = nation.split('_').map{ |name| name.capitalize}.join(' ')
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1')
    response = conn.get("characters?perPage=100?page=1&affiliation=#{format_nation}")
    JSON.parse(response.body, symbolize_names: true)
  end 

end 
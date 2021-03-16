class SearchFacade

  def self.find_members(nation)
    data = SearchService.nation_call(nation)
    @members = data.first(25).map do |member_attrs|
      Member.new(member_attrs)
    end 
  end 

end 
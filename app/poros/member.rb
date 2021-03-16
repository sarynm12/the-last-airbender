class Member 
  attr_reader :name, :photo, :allies, :enemies, :affiliation 

  def initialize(attrs)
    @name = attrs[:name]
    @photo = attrs[:photoUrl]
    @allies = attrs[:allies]
    @enemies = attrs[:enemies]
    @affiliation = attrs[:affiliation]
  end 

end 
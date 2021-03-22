require 'rails_helper'

RSpec.describe 'search facade' do 
  it 'should call on the facade and retrieve search results' do 
    nation = 'Fire Nation'
    data = SearchFacade.find_members(nation)
    
    expect(data).to be_an(Array)

    first_nation = data[0]
    expect(first_nation).to be_a(Member)
    expect(first_nation.affiliation).to eq("Fire Nation Navy")
    expect(first_nation.allies).to eq(["Ozai"])
    expect(first_nation.enemies).to eq(["Earth Kingdom"])
    expect(first_nation.name).to eq("Chan (Fire Nation admiral)")
    expect(first_nation.photo).to eq(nil)
  end 
end 
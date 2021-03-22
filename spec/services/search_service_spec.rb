require 'rails_helper'

RSpec.describe 'search service' do 
  it 'should consume an API and parse data' do 

    nation = 'Fire Nation'
    data = SearchService.nation_call(nation)
    
    expect(data.count).to eq(97)
    expect(data[0]).to have_key(:allies)
    expect(data[0][:allies]).to be_an(Array)
    expect(data[0]).to have_key(:enemies)
    expect(data[0][:enemies]).to be_an(Array)
    expect(data[0]).to have_key(:name)
    expect(data[0][:name]).to be_a(String)
    expect(data[0]).to have_key(:affiliation)
    expect(data[0][:affiliation]).to be_a(String)
  end 
end 
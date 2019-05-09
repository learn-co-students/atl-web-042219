require_relative '../app/hero'
require 'pry'

describe 'Hero' do
  let(:spiderman) { Hero.new([
    { name: "web slinging", coolness: 10 },
    { name: "spider sense", coolness: 8 },
    { name: "super strength", coolness: 3 }
  ]) }

  it '+ correctly adds numbers' do
    x = 2
    y = 2
    expect(x + y).to eq(4)
  end

  it '#abilties should return an array of hashes' do
    expect(spiderman.abilities).to be_an(Array)
    expect(spiderman.abilities.first).to be_a(Hash)
  end

  it '#coolest_ability returns the ability with the highest coolness' do
    expect(spiderman.coolest_ability).to(eq({ name: 'web slinging', coolness: 10 }))
  end

  it 'should be able to add a new ability' do
    # Given some starting data
    aunt_mae = { name: 'supportive aunt may', coolness: 100 }
    # When I add an ability
    spiderman.add_ability(aunt_mae)
    # Then I expect it to be in my list of abilities
    expect(spiderman.abilities).to include(aunt_mae)
  end
end

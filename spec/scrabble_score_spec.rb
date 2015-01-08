require('rspec')
require('scrabble_score')


describe('String#scrabble_score') do

  it("returns a score of 0 if nothing is entered") do
    expect("".scrabble_score()).to eq(0)
  end

  it("returns the score of a single letter") do
    expect("A".scrabble_score()).to eq(1)
  end

  it("returns the score of a single letter regardless of capitalization") do
    expect("k".scrabble_score()).to eq(5)
  end

  it("returns the scrabble score of a whole word") do
    expect("word".scrabble_score()).to eq(8)
  end

  it("returns the scrabble score of a whole word even with numbers") do
    expect("2okjh134".scrabble_score()).to eq("what what!")
  end
  
end

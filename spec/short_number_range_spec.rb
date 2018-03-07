include ShortNumberRange
RSpec.describe ShortNumberRange do
  it "has a version number" do
    expect(ShortNumberRange::VERSION).not_to be nil
  end

  it "input 1,2,3,4,5,7 should return 1 - 5, 7" do
    expect("1,2,3,4,5,7".convert_range).to eq("1 - 5,7")
  end

  it "input 1,2,3,4,5,7 should return 1 to 5, 7" do
    expect("1,2,3,4,5,7".convert_range({short_string: 'to'})).to eq("1 to 5,7")
  end

  it "input 1,2,3,4,5,7,0,9,10 should return 0 - 5, 7, 9 - 10" do
    expect("1,2,3,4,5,7,0,9,10".convert_range).to eq("0 - 5,7,9 - 10")
  end

  it "input 1,2,3,4,5,7,0,9,10 should return 0 - 5, 7, 9 - 10" do
     expect("1-2-3-4-5-7-0-9-10".convert_range({delimiter: '-'})).to eq("0 - 5,7,9 - 10")
  end
end

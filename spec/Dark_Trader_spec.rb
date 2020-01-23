require_relative '../lib/Dark_Trader'

describe "the hashes method" do 
	it "should return BTC" do 
		expect(hashes([0])).to eq("BTC")
	end
end

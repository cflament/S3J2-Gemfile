require_relative '../lib/day_trader.rb'

describe "find the best day to buy and the best day to sell to maximize price uplift" do 
    
    it "should maximize the price uplift" do 
        expect(day_trader([1,2,3,4,5,6,7,8,9,10])).to eq([0,9]) #max price difference is 10 - 1 = 9
        expect(day_trader([11,10,6,4,12,25])).to eq([3,5]) #max price difference is 25 - 4 = 21
    end 
    
    it "only sents a result when a price uplift is possible" do 
        expect(day_trader([8,8,8,8,8,8])).to eq("no possible uplift on this, sorry, mate. Just don't buy it !")
        expect(day_trader([8,7,6,5,4,3,2,1])).to eq("no possible uplift on this, sorry, mate. Just don't buy it !")
    end 

    it "should return the first occurence of the best buying day" do 
        expect(day_trader([1,2,3,1,4,5,6,7,8,9,10])).to eq([0,10]) #max price difference is 10 - 1 = 9
    end 

    it "should return the first occurence of the best selling day" do 
        expect(day_trader([1,2,3,4,5,6,10,7,8,9,10])).to eq([0,6]) #max price difference is 10 - 1 = 9
    end 

    it "should always return a best selling day posterior to the best buying day" do 
        expect(day_trader([7,10,24,5,12,8])).to eq([0,2]) #max price difference is 24 - 5 = 19 but 5 is after 24 so best selling prive is 7
    end
end 




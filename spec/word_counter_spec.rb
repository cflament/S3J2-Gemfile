require_relative '../lib/word_counter.rb'

dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]


describe "the word counter method returns a hash counting the occurences of each words of the dictionnary" do 
    it "counts the occurences of a string in a string" do 
        expect(word_counter("below", dictionnary_2)).to eq({"below"=>1, "low"=>1})
    end 

    it "shouldn't take into account case when counting occurences" do 
        expect(word_counter("Howdy partner, sit down! How's it going?", dictionnary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
    end 
end 


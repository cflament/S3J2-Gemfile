require_relative '../lib/ceasar_cipher.rb'

describe "the ceasar method for letters" do 
    it "should return the initial letter when the key is 0" do
        expect(ceasar("a",0)).to eq("a")
        expect(ceasar("z",0)).to eq("z")
    end 
    it "should return the n.th next letter when the key is n" do 
        expect(ceasar("a",1)).to eq("b")
        expect(ceasar("b",3)).to eq("e")
    end
    it "should make the alphabet loop" do
        expect(ceasar("x",3)).to eq("a")
        expect(ceasar("z",3)).to eq("c")
    end 
    it "should respect original case" do 
        expect(ceasar("X",1)).to eq("Y")
    end
end 

describe "the encrypt method for full string" do
    it "apply the rules to all letters of the string" do 
        expect(encrypt('AaxX bbYY',2)).to eq('CczZ ddAA')
    end
end

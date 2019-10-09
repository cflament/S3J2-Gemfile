
#dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
#dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

dictionnary = Array.new
File.open('bad_words.txt').each { |line| dictionnary << line }
dictionnary.map! {|word| word.delete "\n"}

corpus = File.read('shakespeare.txt')

def word_counter (corpus, dictionnary)
    #initialize a hash
    h = {}
    #loop on every word of the dictionnary
    #for each word call a method counting the occurences of the string in another string & increment the hash
    dictionnary.each do |word|
        #downcase corpus to compare with a downcase dictionnary
        d_corpus = corpus.downcase 
        count = d_corpus.scan(/(?=#{word})/).count
        if count > 0
            h.keys << word 
            h[word] = count
        end 
    end 
    h 


end 

puts word_counter(corpus, dictionnary)
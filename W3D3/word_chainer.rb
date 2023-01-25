require_relative "dictionary.txt"

class WordChainer

    def initialize(dictionary_file_name)
        @dictionary = File.readlines("dictionary.txt")
    end
    
end
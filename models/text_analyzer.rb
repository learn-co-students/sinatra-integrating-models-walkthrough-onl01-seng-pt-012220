# Your TextAnalyzer model code will go here.
class TextAnalyzer
    attr_reader :text

    def initialize(text)
        @text = text.downcase
    end

    def count_of_words
        words = text.scan(/[a-z]+/)
        words.count
    end

    def count_of_vowels
        text.scan(/[aeoui]/).count
    end

    def count_of_consonants
        text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    end

    def most_used_letter
        s = text.gsub(/[^a-z]/, '').split('')
        h = {}
        s.each do |w|
            if h[w]
                h[w] += 1
            else
                h[w] = 1
            end
        end
        
        h.select do |k|
            h[k] == h.values.max
        end
    end
    
end

class PigLatinizer

	def piglatinize(text)
		text.split(' ').map { |word| piglatinize_word(word) }.join(' ')
	end

	def piglatinize_word(word)
	    # word starts with vowel
	    if !consonant?(word[0])
	      word = word + "w"
	    # word starts with 3 consonants
	    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
	      word = word.slice(3..-1) + word.slice(0,3)
	    # word starts with 2 consonants
	    elsif consonant?(word[0]) && consonant?(word[1])
	      word = word.slice(2..-1) + word.slice(0,2)
	    # word starts with 1 consonant
	    else
	      word = word.slice(1..-1) + word.slice(0)
	    end
	    word << "ay"
	end

	def consonant?(char)
    	!char.match(/[aAeEiIoOuU]/)
    end
#
end
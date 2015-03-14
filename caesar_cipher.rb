
def caesar_cipher(string = "", shift = 0)

	alphabet_lower_case = "abcdefghijklmnopqrstuvwxyz"
	
	alph_array_lower_case = alphabet_lower_case.split("")

	#hash to store each letter its numeric position in the alphabet
	alph_hash = {}

	pos = 0

	#insert lower case alphabet into hash, positions 0-25
	alph_array_lower_case.each do |a|

		alph_hash[a] = pos
		pos +=1

	end

	

i = 0
pos = 0
new_pos = 0
letter = ''
result_string = []
	
	while i < string.length do 

		letter =  string[i].downcase
		
		if alph_array_lower_case.include? letter


				pos = alph_hash[letter]
				new_pos = alph_pos(pos, shift)
					
					if string[i].is_upper?
						result_string << alph_hash.key(new_pos).upcase
					else
						result_string << alph_hash.key(new_pos)
					end
		else

			result_string << string[i] #pushes spaces and punctuation to array
		end

		i+=1

	end

	puts result_string.join()

end

		def alph_pos(start, shift)

			#should return the value to shift to the right or left in alphabet based on start
			#if it's higher than 25 then it has to start at the beginning

		if shift >=0 #positive (forward) shift

			if start + shift > 25
				index = (start+shift) - 26
			else
				index = start + shift
			end

			
		else  #negative shift


			if start + shift < 0 #uses plus because shift is already negative
				index = 26 + (start + shift)
			else
				index = start + shift
			end
		end
		return index


		end

public



def is_upper?
	self == self.upcase
end

def is_lower?
	self == self.downcase
end


caesar_cipher("What a string!", 5)



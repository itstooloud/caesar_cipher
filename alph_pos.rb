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


puts alph_pos(22, -2)	
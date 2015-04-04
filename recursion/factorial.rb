# define a function that determines the factorial of a number

def factorial (n)

	if n == 0
		return 1
	else
		return (n * factorial(n-1))
	end

	
end


def is_palindrome?(word)
	if word.length == 1 || word.length == 0
		true
	else
		if word[0] == word[-1]
			is_palindrome?(word[1..-2])
		else
			false
		end
	end

end

def bottles(num)
	if num == 0
		puts "no more bottles of beer on the wall"
	else
		
		puts num.to_s + " bottles of beer on the wall"
		bottles(num-1)
	end
end



def fibonnaci (num)

	#num represents the position in the fib sequence

	if num == 0
		return 0
	elsif num == 1
		return 1
	else
		return fibonnaci(num-1) + fibonnaci(num-2)
	end
end



p fibonnaci(5)

#puts is_palindrome?("REPER")
#bottles(20)

#p factorial (5)
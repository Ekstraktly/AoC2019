currentNumber, nextNumber = 382345
finishNumber = 843167
counter = 0

while currentNumber.to_i < finishNumber do
	nextNumber = nextNumber.to_s.split("")	
	array = currentNumber.to_s.split("")
	array.each_with_index do |currentDigit, index|
		previousDigit = nextNumber[index-1] unless index == 0
		nextDigit = nextNumber[index+1] unless index == currentNumber.size - 1 
		if previousDigit
		       if currentDigit >= previousDigit	
				nextNumber[index] = currentDigit		
			else 
				nextNumber[index] = previousDigit	
			end
		 else
			 nextNumber[0] = currentDigit
		 end
	end
	nextNumber = nextNumber.join("").to_i
	if currentNumber.to_i == nextNumber
		nextNumber += 1
		currentNumber = nextNumber
	#elsif nextNumber.to_s.match /(\d)\1+/
	else
		puts nextNumber
		counter += 1
		currentNumber = nextNumber
	end
end
puts "counter:", counter

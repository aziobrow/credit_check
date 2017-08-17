#Separate string of numbers into separate characters (.split)
#Reverse order of characters (.reverse)
#Push characters into array (.map)
#Convert to integers (to_i)
#Identify every other digit in the array (odd indices- position 0 should be last number)
#Multiply odd indexed numbers by 2
#Identify which numbers now have two digits
  #Break apart those numbers into two separate digits (.digits)
  #Add the two digits (.sum)
  #Replace the original number with the sum of its digits
#Add all of the numbers in the array together (.sum)
#Check if sum is divisible by ten (sum % 10 == 0)
  #If so, output "The number is valid"
  #Otherwise, output "The number is invalid"

card_number = "342801633855673"
valid = false

def doubler(element)
  element *= 2
end

def sum_two_digits(double)
  if double > 9
    double_sum = double.digits.sum
  else
    double
  end
end

def create_array(card_number)
  string_list = card_number.reverse.split('')
  string_list.map.with_index do |element, index|
    element = element.to_i
    if index.odd?
      double = doubler(element)
      sum_two_digits(double)
    else
      element
    end
  end
end

def divisible_by_ten?(card_number_array)
  card_number_array.sum % 10 == 0
end

def validity_output(valid)
  if valid == true
    puts "Your number is valid!"
  else
    puts "Your number is invalid."
  end
end

def credit_check (card_number)
  card_number_array = create_array(card_number)
  if divisible_by_ten?(card_number_array)
    valid = true
  end
    validity_output(valid)
end

credit_check(card_number)

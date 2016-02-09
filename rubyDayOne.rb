# print fizz for every multiple of 3, print Buzz for mult of 5, print fizzbuzz for mult of 3 & 5

def fizzBuzz
  (1..100).each do |i|
    if i % 3 == 0 && i % 5 == 0
      puts i.to_s + " FIZZBUZZ"
    elsif i % 3 == 0
      puts i.to_s + " FIZZ"
    elsif i % 5 == 0
      puts i.to_s + " BUZZ"
    else
      puts i
    end
  end
end



# function that is a sum of two numbers
def sumNums(one, two)
  puts one + two
end

# function that takes a number and rtns true if even and rtns false otherwise

def is_even(number)
  if number% 2 == 0
    puts true
  else
    puts false
  end
end

# array of words, uses .each and returns words in all caps
listofwords = ["end", "bean", "pink"]
def to_capital(array)
  array.each() do |word|
    word.upcase! # bang at end makes it permanent
  end
end
to_capital(listofwords)

#Write a method which calls another method, then uses its return value.

def methodOne
  return 5
end

def methodTwo
  puts methodOne * 5
end

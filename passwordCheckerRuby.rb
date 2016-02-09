def validator()
  puts "Enter user ID"
  userId = gets.chomp
  puts "Enter password"
  password = gets.chomp
  same(userId, password)
  longEnough(userId, password)
  doesNotContainSpecial(userId)
  containsSpecial(password)
end

def same(userId, password)
  if userId == password
    p true
  else
    p false
  end
end

def longEnough(userId, password)
  if userId.length < 6 || password.length < 6
    p false
  else
    p true
  end
end

def doesNotContainSpecial(userId)
  if userId.include?("!") || userId.include?("$") || userId.include?("#")
    p false
  else
    p true
  end
end

def containsSpecial(string)
  if string.include?("!") || string.include?("$") || string.include?("#")
    p true
  else
    p false
  end
end

def hasDigit(password)
  0.upto(9) do |i|
    if password.include?(i.to_s)
      p false
    else
      p true
  end
end

Dir.chdir(File.dirname(__FILE__))

def value_of(char, outcome = false)
  if outcome
    return 0 if char == 'X'
    return 3 if char == 'Y'
    return 6 if char == 'Z'
  end
  return 1 if char == 'X'
  return 2 if char == 'Y'
  return 3 if char == 'Z'
end

def get_value_of_battle(input1, input2, part = 1)
  hands = [
    %w[A Z X],
    %w[B X X],
    %w[C Y X],

    %w[A X Y],
    %w[B Y Y],
    %w[C Z Y],

    %w[A Y Z],
    %w[B Z Z],
    %w[C X Z]
  ]

  outcome = 0
  value = 0
  hands.length.times do |i|
    if hands[i][0] == input1 && hands[i][part] == input2
      outcome = value_of(hands[i][2], outcome = true)
      value = value_of(hands[i][1])
    end
  end
  return value + outcome
end

input = []
File.read('input.txt').split("\n").each {|s| input.append(s.split(' '))}

# PART ONE
sum = 0
input.each do |t|
  sum += get_value_of_battle(t[0],t[1])
end

p sum

#PART TWO
sum = 0
input.each do |t|
  sum += get_value_of_battle(t[0],t[1], part = 2)
end

p sum
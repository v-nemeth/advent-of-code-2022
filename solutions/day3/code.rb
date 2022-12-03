Dir.chdir(File.dirname(__FILE__))

def find_value(char)
  alphabet = [*'a'..'z', *'A'.. 'Z']

  alphabet.length.times {|i| return i+1 if alphabet[i] == char}
end

def find_common_char(s1,s2)
  common_char = []

  s2.length.times do |i|
    s1.length.times do |j|
      common_char = s1[j] if s2[i] == s1[j]
    end
  end
  return common_char
end

sum = 0
File.read('input.txt').split("\n").each do |pack|
  c1,c2 =  pack.partition(/.{#{pack.size/2}}/)[1,2]

  sum += find_value(find_common_char(c1,c2))
end
p sum
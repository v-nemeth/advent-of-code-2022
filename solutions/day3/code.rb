Dir.chdir(File.dirname(__FILE__))

def find_value(char)
  alphabet = [*'a'..'z', *'A'.. 'Z']

  alphabet.length.times {|i| return i+1 if alphabet[i] == char}
end

def find_common_char(s1,s2, s3 = false)
  common_char = 0
  if s3
    common_chars_1 = []
    common_chars_2 = []

    s2.length.times do |i|
      s1.length.times do |j|
        common_chars_1.append( s1[j] ) if s2[i] == s1[j]
      end
    end

    s3.length.times do |i|
      s1.length.times do |j|
        common_chars_2.append( s1[j] ) if s3[i] == s1[j]
      end
    end

    common_chars_1.length.times do |i|
      common_chars_2.length.times do |j|
        common_char = common_chars_2[j] if common_chars_1[i].to_s == common_chars_2[j]
      end
    end
    return common_char
  end


  s2.length.times do |i|
    s1.length.times do |j|
      common_char = s1[j] if s2[i] == s1[j]
    end
  end
  return common_char
end


input = File.read('input.txt').split("\n")

sum = 0
input.each do |pack|
  c1,c2 =  pack.partition(/.{#{pack.size/2}}/)[1,2]

  sum += find_value(find_common_char(c1,c2))
end
p sum

sum = 0
input.length.times do |i|
  next if i%3 == 0 && i != 0 || i > input.length-3
  p "#{input[i]}, #{input[i+1]}, #{input[i+2]}"
  sum += find_value(find_common_char(input[i],input[i+1],input[i+2]))
end
p sum
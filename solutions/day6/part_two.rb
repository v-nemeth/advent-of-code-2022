Dir.chdir(File.dirname(__FILE__))

input = File.read('input.txt')

def matches? (string)
  string.length.times do |i|
    string.length.times do |j|
      next if i == j
      return true if string[i] == string[j]
    end
  end
  false
end

(input.length-14).times do |i|
  p i+14 unless matches?(input[i..i+13])
end

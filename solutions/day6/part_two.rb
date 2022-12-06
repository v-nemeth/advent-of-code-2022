Dir.chdir(File.dirname(__FILE__))
def matches? (string)
  string.length.times {|i| string.length.times {|j| return true if string[i] == string[j] unless i == j} }
  false
end
input = File.read('input.txt')
(input.length-14).times {|i| p i+14 unless matches?(input[i..i+13])}
Dir.chdir(File.dirname(__FILE__))

input = File.read('input.txt')

def matches? (i1,i2,i3,i4)
  return true if i1 == i2 || i1 == i3 || i1 == i4 || i2 == i3 || i2 == i4 || i3 == i4
  false
end

(input.length-3).times do |i|
  p i+4 unless matches?(input[i],input[i+1],input[i+2],input[i+3])
end

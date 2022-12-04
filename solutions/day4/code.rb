Dir.chdir(File.dirname(__FILE__))
input = File.read('input.txt').split("\n")

def is_contained (l1,u1,l2,u2)
  elf1 = Range.new(l1,u1)
  elf2 = Range.new(l2,u2)

  elf1.cover?(elf2) || elf2.cover?(elf1)
end

def overlap(l1,u1,l2,u2)
  elf1 = Range.new(l1,u1)
  elf2 = Range.new(l2,u2)

  elf2.begin <= elf1.end && elf1.begin <= elf2.end
end

sum = 0
input.each do |string|
  s = string.split(/[,-]/).map(&:to_i)
  p s if is_contained(s[0],s[1],s[2],s[3])

  sum += 1 if overlap(s[0],s[1],s[2],s[3])
end

p sum
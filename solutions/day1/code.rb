Dir.chdir(File.dirname(__FILE__))

elves = []
File.read('input.txt').lines("\n\n").each {|elf| elves.append(elf.split("\n").map(&:to_i).sum)}
puts "Task1: " + elves.sort.last.to_s + " Task2: " + elves.sort.last(3).sum.to_s
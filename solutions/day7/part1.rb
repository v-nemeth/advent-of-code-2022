Dir.chdir(File.dirname(__FILE__))

input = File.read('input.txt').split("\n")


input.each do |line|
  command = line.split(" ")

  if line[0] == "$"
    run_command(line[1],line[2])
  end


end


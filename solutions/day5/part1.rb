Dir.chdir(File.dirname(__FILE__))
input = File.read('input.txt').split("\n")

c = [[],[],[],[],[],[],[],[],[]]

input[0..7].each do |string|
  c[0].append(string[0..2])
  c[1].append(string[4..6]) if string[4..6] != "   "
  c[2].append(string[8..10]) if string[8..10] != "   "
  c[3].append(string[12..14]) if string[12..14] != "   "
  c[4].append(string[16..18]) if string[16..18] != "   "
  c[5].append(string[20..22]) if string[20..22] != "   "
  c[6].append(string[24..26]) if string[24..26] != "   "
  c[7].append(string[28..30]) if string[28..30] != "   "
  c[8].append(string[32..34]) if !string[32..34].nil?
end
c.each {|a| a.reverse!}

p c[8]

#PART 1!
input[9..-1].each do |string|
  move = string.scan(/\d+/)[0].to_i
  from = string.scan(/\d+/)[1].to_i
  to = string.scan(/\d+/)[2].to_i

  move.times do
    m_crate = c[from-1].pop
    c[to-1].push(m_crate)
  end
end
string = ""
c.each {|a| string += a[-1].gsub(/[\[\]]/,'')}
p string

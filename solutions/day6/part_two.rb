Dir.chdir(File.dirname(__FILE__))
def matches? (string)
  string.length.times {|i| string.length.times {|j| return true if string[i] == string[j] unless i == j} }
  false
end

def matches2? (i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14)
  return true if i1 == i2 || i1 == i3 || i1 == i4 || i1 == i5 || i1 == i6 || i1 == i7 || i1 == i8 || i1 == i9 || i1 == i10 || i1 == i11 || i1 == i12 || i1 == i13 || i1 == i14
  return true if i2 == i3 || i2 == i4 || i2 == i5 || i2 == i6 || i2 == i7 || i2 == i8 || i2 == i9 || i2 == i10 || i2 == i11 || i2 == i12 || i2 == i13 || i2 == i14
  return true if i3 == i4 || i3 == i5 || i3 == i6 || i3 == i7 || i3 == i8 || i3 == i9 || i3 == i10 || i3 == i11 || i3 == i12 || i3 == i13 || i3 == i14
  return true if i4 == i5 || i4 == i6 || i4 == i7 || i4 == i8 || i4 == i9 || i4 == i10 || i4 == i11 || i4 == i12 || i4 == i13 || i4 == i14
  return true if i5 == i6 || i5 == i7 || i5 == i8 || i5 == i9 || i5 == i10 || i5 == i11 || i5 == i12 || i5 == i13 || i5 == i14
  return true if i6 == i7 || i6 == i8 || i6 == i9 || i6 == i10 || i6 == i11 || i6 == i12 || i6 == i13 || i6 == i14
  return true if i7 == i8 || i7 == i9 || i7 == i10 || i7 == i11 || i7 == i12 || i7 == i13 || i7 == i14
  return true if i8 == i9 || i8 == i10 || i8 == i11 || i8 == i12 || i8 == i13 || i8 == i14
  return true if i9 == i10 || i9 == i11 || i9 == i12 || i9 == i13 || i9 == i14
  return true if i10 == i11 || i10 == i12 || i10 == i13 || i10 == i14
  return true if i11 == i12 || i11 == i13 || i11 == i14
  return true if i12 == i13 || i12 == i14
  return true if i13 == i14
  false
end

(input.length-14).times do |i|
  p i+14 unless matches2?(input[i],input[i+1],input[i+2],input[i+3],input[i+4],input[i+5],input[i+6],input[i+7],input[i+8],input[i+9],input[i+10],input[i+11],input[i+12],input[i+13])
end


(input.length-14).times do |i|
  p i+14 unless matches?(input[i..i+13])
end

input = File.read('input.txt')
(input.length-14).times {|i| p i+14 unless matches?(input[i..i+13])}
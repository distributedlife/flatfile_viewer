filename = ARGV[0]

def pull(line, start, count)
  return line.slice(start - 1, count)
end

rows_to_consider = [1]

file = File.new(filename, "r")
row = 1
while (line = file.gets)
  next unless rows_to_consider | [row]

  puts pull(line, 1,  10 )
  puts pull(line, 11, 6 )
  puts pull(line, 17, 2 )
  puts pull(line, 19, 14 )
  puts pull(line, 33, 11 )

  row =+ 1
end
file.close

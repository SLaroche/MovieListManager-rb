=begin
# Create a new file and write to it
File.open('test.txt', 'w') do |f2|
  # use "\n" for two lines of text
  f2.puts "Created by Satish\nThank God!"
  f2.puts "Created by Satish\nThank God!"
end
#File.write('test.txt', 'Some glorious content')

File.open('test.txt', 'r') do |f1|
  while line = f1.gets
    puts line
  end
end
=end
def addList(filter)
  puts "allo"+filter
end

def getMovie(name)
end

def addToList(m)
  list = Array.new
  File.open('movie.ml', 'r') do |f1|
    while line = f1.gets
      list.push(line)
    end
  end
  list.push(m.toString)
  File.open('movie.ml', 'w') do |f2|
    list.each do |i|
      f2.puts i
    end
  end
end

def replaceInList(name)
end

def markAsView(m)
  list = Array.new
  File.open('movie.ml', 'r') do |f1|
    while line = f1.gets
      list.push(line)
    end
  end
  File.open('movie.ml', 'w') do |f2|
    list.each do |i|
      s = i.split(/  /)
      if s[2] == m.title
        f2.puts "[x]  #{s[1]}  #{s[2]}  #{s[3]}  #{s[4]}"
      else
        f2.puts i
      end
    end
  end
end

def getLastNumber
  list = Array.new
  File.open('movie.ml', 'r') do |f1|
    while line = f1.gets
      list.push(line)
    end
  end
  lastLine = list.pop
  m = createMovieFromLine(lastLine)
  return m.id
end

def createList(name)
  file = File.new(name + ".ml", "w")

require_relative "File_Handler.rb"
require_relative "Movie.rb"
require_relative "IMDB_connection.rb"
require_relative "util.rb"

#first_num = gets.to_s
#load "File_Handler.rb"

m = Movie.new("1", "batman", "1989", "tim burton")
print "> "
while s = gets.chomp
  break if s == "x"
  line = s.split(//)
  if s =~ / -f /
    puts "yes"
  elsif s =~ / -a/
    name = utilGetName(line)
    num = getLastNumber.to_i + 1
    m = getByTitle(name, num)
    addToList(m)
  elsif s =~ / -s/
    name = utilGetName(line)
    num = getLastNumber.to_i + 1
    sl = Array.new
    sl = search(name, num)
    i = 0
    sl.each do |m|
      i += 1
      puts "#{i}. #{m.toStringSoft}"
    end
    print "~ "
    i = gets.to_i
    line = sl[i-1].title.split(//)
    line.push(' -')
    addToList(sl[i-1])
  elsif s =~ / -d /
  elsif s =~ / -n /
    name = utilGetName(line)
    createList(name)
  end
  if s =~ / -o /
    name = utilGetOption(line)
    puts name
  end
  if s =~ / -v/
    name = utilGetName(line)
    m = getByTitle(name, 0)
    markAsView(m)
  end
  print "> "
end

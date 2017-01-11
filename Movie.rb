class Movie
  attr_accessor :id, :title, :year, :director, :label
  def initialize(id, title, year, director)
    @id = id
    @title = title
    @year = year
    @director = director
  end

  def toString
    return "[ ]  #{@id}  #{@title}  #{@year}  #{@director}"
  end

  def toStringSoft
    return "#{@title} #{@year} #{@director}"
  end

  def eql?(m)
    return @title == m.title && @year == m.year && @director == m.director
  end
end

def createMovieFromLine(line)
  item = line.split(/  /)
  return Movie.new(item[1], item[2], item[3], item[4])
end

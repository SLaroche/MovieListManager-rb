
def utilGetName(line)
  name = ""
  for c in line
    if c == '-'
      break
    end
    name += c
  end
  return name[0...-1]
end

def utilGetOption(line)
  line.push(' ')
  name = ""
  bool = false
  for c in line
    if c == 'o'
      bool =  true
    end
    if bool
      name += c
    end
  end
  return name[2...-1]
end

def utilSort(sortby)
  #if case
end

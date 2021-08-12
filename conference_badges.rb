
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(arrayOfNames)
  arrayOfNames.collect{|name| badge_maker(name)}
end

# def assign_rooms(arrayOfNames)
#   arrayOfNames.map do |name|
#     "Hello, #{name}! You'll be assigned to room #{arrayOfNames.index(name) + 1}!"
#   end
# end

def assign_rooms(arrayOfNames)
  finalArr = []
  arrayOfNames.each_with_index do |name,index|
    finalArr.push("Hello, #{name}! You'll be assigned to room #{index+1}!")
  end
  finalArr
end

def printer(arrayOfNames)
  batch_badge_creator(arrayOfNames).each do |badge|
    puts badge
  end
  assign_rooms(arrayOfNames).each do |room|
    puts room
  end
end
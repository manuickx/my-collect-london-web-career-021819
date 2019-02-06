def my_collect(array)
    new_array = []
    i=0
    while i<array.length
      new_array.push yield(array[i])
      i=i+1
    end
  new_array
end

students  = ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']

my_collect(students) do |name| 
  name.split(" ").first
end

languages = ['ruby', 'javascript', 'python', 'objective-c']

my_collect(languages) do |lang|
  lang.upcase
end




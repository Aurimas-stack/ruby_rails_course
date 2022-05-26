# a = [1, 2, 3, 4];
# a[0], a[1]

# # a.last -> last el
# # x = 1..100, x.to_a --> to array, x.to_a.shuffle -> random shuffle
# # z = x.to_a.shuffle! - ! maintains order, mutates the caller
# # "a".."z", -> x.to_a --> array of letters
# # .length --> gives array length
# # a << 10 --> 10 to end of array
# # a.unshift(0) --> 0 as first el
# # a.append(10) --> last el
# # a.uniq! -> removes duplicates from array
# # a.empty? --> false
# # a.include?(1) --> true
# # a.push("new item") --> last el to array
# # a.pop --> returns last item
# # a.join --> joins the array || a.join(", ") || a.join("-")
# # a.split("-")

# # %w(my name is something) - turns everything in array between ()
# # z = _ --> takes last expression and turns into the array (in this case sentece above)

# # for i in a
# # print i
# # end

# # a.each do |numbers| 
# # print numbers + " "
# # end

# # a.each {|numbers| print numbers + " "} - preffered way to looop through array

# # z = (1..100).to_a.shuffle
# # z.select {|number| number.odd?}
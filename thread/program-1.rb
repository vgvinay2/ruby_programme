def calculate_sum(arr)
  sum = 0
  arr.each do |item|
    sum += item
  end
  sum
end

@items1 = [12, 34, 55]
@items2 = [45, 90, 2]
@items3 = [99, 22, 31]

puts "items1 = #{calculate_sum(@items1)}"
puts "items2 = #{calculate_sum(@items2)}"
puts "items3 = #{calculate_sum(@items3)}"

## The output of the above program would be

items1 = 101
items2 = 137
items3 = 152


## This is a very simple program that will help in
# understanding why we should use threads.
# In the above code listing, we have 3 arrays and
# are calculating their sum.
# All of this is pretty straightforward stuff.
# However, there is a problem. We cannot get the sum
# of the items2 array unless we have received the items1 result.
# It’s the same issue for items3. Let’s change the code a bit to show what I mean.

def calculate_sum(arr)
  sleep(2)
  sum = 0
  arr.each do |item|
    sum += item
  end

  sum
end

# In the above code listing we have added a sleep(2) instruction which
# will pause execution for 2 seconds and then continue.
# This means items1 will get a sum after 2 seconds, items2 after 4 seconds (2 for items1
# + 2 seconds for items2) and items3 will get sum after 6 seconds. This is not what we want.
# Our items arrays don’t depend upon each other, so it would be ideal to have their sums
# calculated independently. This is where threads come in handy.
# Threads allow us to move different parts of our program into different execution contexts
# which can execute independently. Let’s write a threaded/multithreaded version of the above program:

def calculate_sum(arr)
  sleep(2)
  sum = 0
  arr.each do |item|
    sum += item
  end
  sum
end

@items1 = [12, 34, 55]
@items2 = [45, 90, 2]
@items3 = [99, 22, 31]

threads = (1..3).map do |i|
  Thread.new(i) do |i|
    items = instance_variable_get("@items#{i}")
    puts "items#{i} = #{calculate_sum(items)}"
  end
end
threads.each {|t| t.join}



## If you run the above code sample, you might see the following
# output (I use might because your output might be different in terms of items arrays sum sequence)

items2 = 137
items3 = 152
items1 = 101

## http://www.sitepoint.com/threads-ruby/

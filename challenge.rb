#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'migratoryBirds' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def migratoryBirds(arr)
    # Write your code here
    count = 0
    result = 6

    arr.uniq.each do |num|
        if count == arr.count(num)
            result = num if num < result
        elsif arr.count(num) > count
            result = num
            count = arr.count(num)
        end
    end
    result
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr_count = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = migratoryBirds arr

fptr.write result
fptr.write "\n"

fptr.close()

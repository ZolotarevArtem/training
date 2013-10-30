SIZE = 10
rArray = Array.new(SIZE){ |ar| ar = rand(50) + 1}
puts "random array = " + rArray.inspect

for i in 0...SIZE do
  for j in 0...SIZE - (i + 1) do
    if rArray[j] > rArray[j + 1]
      rArray[j], rArray[j + 1] = rArray[j + 1], rArray[j]
    end
  end
end

puts "sorted array = " + rArray.inspect

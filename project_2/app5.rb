arr = [
1227384832,
1258358784,
1298845696,
2371514368,
2701154304,
2789560320,
2943027200,
3364757504,
4306806784,
5046759424,
5365037056,
6014645372,
8167145472,
10068248576,
10382393976,
15183990784

]

#tamara
x = 16153247744
#mihail
#x = 16193265664
#x = 9271410688

sumArr = 0
for i in (0...arr.size) do
	sumArr = sumArr + arr[i]
end
mini = sumArr

for j in (0b0..2 ** arr.size) do
	temp = j.to_s(2).split("").reverse
	sum = 0
	for k in (0..temp.size) do
		sum = sum + arr[k].to_i * temp[k].to_i
	end
	pSum = x - sum
	#pSum = (x - sum).abs
	if pSum < mini && pSum >= 0
		miniArr = j
		mini = pSum
	end
end

tempArr = miniArr.to_s(2).split("").reverse

endArr = []
for y in (0...tempArr.size) do
	if tempArr[y].to_i > 0
		 endArr << arr[y]
	end
end
puts endArr
puts "mini = #{mini}"
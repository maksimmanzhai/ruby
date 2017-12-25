x = 16153255936

arr = [
1154357248,
2308128768,
2516461568,
2622394368,
2516496384,
2518784000,

2930933760,
2933905408,
3773493248,
5507487744,
6231138304,
2517614592,
5029822464,
1258041344,
1258418176,
1258532864





]

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
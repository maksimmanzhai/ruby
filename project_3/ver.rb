col = 20
@sum2 = 0
for i in (0b0..2**col) do
	sum = 0
	temp = i.to_s(2).split("").reverse
	for j in (0..temp.size) do
		sum = sum + temp[j].to_i
	end
	if sum >= 16
		@sum2 = @sum2 + 1
	end
end

puts "#{@sum2}\t#{2**col}\t#{(@sum2.to_f) / 2**col * 100} %"
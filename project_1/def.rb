@arr = []

def greating_area x, y
	puts "======================="
	for i in (0...y) do
		for j in (0...x) do
			@arr[i] = (0...x).to_a
		end
	end
end

def show_area
	print @arr
end

def start_game
	puts "Choose your size of area"
	print "Enter X: "
	x = gets. chomp.to_i
	print "Enter Y: "
	y = gets. chomp.to_i
	greating_area x, y
end

start_game
show_area

puts "#{@arr}"

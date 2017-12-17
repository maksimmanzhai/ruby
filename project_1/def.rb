@arr = []

def greating_area x, y
	puts "======================="
	for i in (0...y) do
		for j in (0...x) do
			@arr[i] = []
			@arr[i] = (0...x).to_a 
		end
	end
end

def start_game
	puts "Hello. Choose your size of area"
	print "Enter X: "
	x = gets. chomp.to_i
	print "Enter Y: "
	y = gets. chomp.to_i
	greating_area x, y
end

start_game
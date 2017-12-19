#sudoku

@arr = []

def grid
	puts "\t===================================================================="
	for i in (0...81) do
		print "\t|#{@arr[i]}|"
		if ((i + 1) % 9 ) == 0
			puts "\n"
		end
	end
	puts "\t===================================================================="
end

def grid_start x
	for i in (0..(7 * (6 - x))) do
		@arr[rand(0...81)] = rand(1..9)
	end
end

def player_turn

end

def end_combination

end

def end_control

end


grid

puts "Enter your difficult (1-5)"
difficult = gets.chomp.to_i
grid_start difficult
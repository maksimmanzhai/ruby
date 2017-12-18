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

def grid_start

end

def player_turn

end

def end_combination

end

def end_control

end



grid
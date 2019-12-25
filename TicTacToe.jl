board = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]

function display()
	for i = 1:3
		println("|" * board[i][1] * "|" * board[i][2] * "|" * board[i][3] * "|")
	end
end

function Game_Over()
	if board[1] == ["X", "X", "X"] || board[2] == ["X", "X", "X"] || board[3] == ["X", "X", "X"] || [board[1][1], board[2][1], board[3][1]] == ["X", "X", "X"] || [board[1][2], board[2][2], board[3][2]] == ["X", "X", "X"] || [board[1][3], board[2][3], board[3][3]] == ["X", "X", "X"] || [board[1][1], board[2][2], board[3][3]] == ["X", "X", "X"] || [board[1][3], board[2][2], board[3][1]] == ["X", "X", "X"]
		return 1
	elseif board[1] == ["O", "O", "O"] || board[2] == ["O", "O", "O"] || board[3] == ["O", "O", "O"] || [board[1][1], board[2][1], board[3][1]] == ["O", "O", "O"] || [board[1][2], board[2][2], board[3][2]] == ["O", "O", "O"] || [board[1][3], board[2][3], board[3][3]] == ["O", "O", "O"] || [board[1][1], board[2][2], board[3][3]] == ["O", "O", "O"] || [board[1][3], board[2][2], board[3][1]] == ["O", "O", "O"]   
		return 2
	else 
		return 0
    end
end

println("Welcome to the game of Tic Tac Toe!")
println("to specify your move, please enter the X and Y coordinate when prompted.")
println("For example, the top right corner would be (1, 1).")

while true
println("")
println("Enter A or B to choose game mode.")
println("A. single player    B. two player.")

choice = readline()

function B()
        i = 1
        winstate = "Draw Game."
        println("Player 1 --> X")
	println("Player 2 --> Y")
	println("")
	
	
	while(i <= 9)
		display()
		println("")
		if i % 2 == 1
			println("Please Enter X coordinate (Player 1): ")
			p1x = parse(Int64, readline())
			println("Please Enter Y coordinate (Player 1): ")
			p1y = parse(Int64, readline())
			if board[p1y][p1x] == " "
			    board[p1y][p1x] = "X"
			    i += 1
		    else 
		    	println("This square is already filled. Please choose another square. ")
		    end
			println("")
			if Game_Over() == 1
				winstate = "Player 1 Wins! "
				break
			end
        else 
        	println("Please Enter X coordinate (Player 2): ")
        	p2x = parse(Int64, readline())
        	println("Please Enter Y coordinate (Player 2): ")
			p2y = parse(Int64, readline())
			if board[p2y][p2x] == " "
			    board[p2y][p2x] = "O"
			    i += 1
		    else 
		    	println("This square is already filled. Please choose another square. ")
		    end
			println("")
			if Game_Over() == 2
				winstate = "Player 2 Wins! "
				break
			end
		end
	end

	display()
	println("")
	println("GaMe oVeR!")
	println(winstate)
        
end

function A()
        println("Player 1 --> X")
	println("Player 2 --> Y")
	println("")
	
	
	while(i <= 9)
		display()
		println("")
		if i % 2 == 1
			println("Please Enter X coordinate: ")
			p1x = parse(Int64, readline())
			println("Please Enter Y coordinate: ")
			p1y = parse(Int64, readline())
			if board[p1y][p1x] == " "
			    board[p1y][p1x] = "X"
			    i += 1
		        else 
		    	    println("This square is already filled. Please choose another square. ")
		        end
			println("")
			if Game_Over() == 1
			        winstate = "Congratulations, You Win!"
				break
			end
        else 
        	
			println("")
			println("Computer is processing ... ")
			println("")
			if ((board[1][1] == "X" && board[1][2] == "X") || (board[1][1] == "O" && board[1][2] == "O")) && board[1][3] == " "
				board[1][3] = "O"
			        i += 1#
			elseif ((board[1][1] == "X" && board[1][3] == "X") || (board[1][1] == "O" && board[1][3] == "O")) && board[1][2] == " "
				board[1][2] = "O"
			        i += 1#
		        elseif ((board[1][3] == "X" && board[1][2] == "X") || (board[1][3] == "O" && board[1][2] == "O")) && board[1][1] == " "
				board[1][1] = "O"
				i += 1#
			elseif ((board[2][1] == "X" && board[2][2] == "X") || (board[2][1] == "O" && board[2][2] == "O")) && board[2][3] == " "
				board[2][3] = "O"
				i += 1#
			elseif ((board[2][1] == "X" && board[2][3] == "X") || (board[2][1] == "O" && board[2][3] == "O")) && board[2][2] == " "
				board[2][2] = "O"
				i += 1#
			elseif ((board[2][2] == "X" && board[2][3] == "X") || (board[2][2] == "O" && board[2][3] == "O")) && board[2][1] == " "
				board[2][1] = "O"
				i += 1#
			elseif ((board[3][1] == "X" && board[3][2] == "X") || (board[3][1] == "O" && board[3][2] == "O")) && board[3][3] == " "
				board[3][3] = "O"
				i += 1#
			elseif ((board[3][1] == "X" && board[3][3] == "X") || (board[3][1] == "O" && board[3][3] == "O")) && board[3][2] == " "
				board[3][2] = "O"
				i += 1#
			elseif ((board[3][2] == "X" && board[3][3] == "X") || (board[3][2] == "O" && board[3][3] == "O")) && board[3][1] == " "
				board[3][1] = "O"
				i += 1#
			elseif ((board[1][1] == "X" && board[2][1] == "X") || (board[1][1] == "O" && board[2][1] == "O")) && board[3][1] == " "
				board[3][1] = "O"
				i += 1#
			elseif ((board[1][1] == "X" && board[3][1] == "X") || (board[1][1] == "O" && board[3][1] == "O")) && board[2][1] == " "
				board[2][1] = "O"
				i += 1#
		    elseif ((board[3][1] == "X" && board[2][1] == "X") || (board[3][1] == "O" && board[2][1] == "O")) && board[1][1] == " "
				board[1][1] = "O"
				i += 1#
			elseif ((board[1][2] == "X" && board[2][2] == "X") || (board[1][2] == "O" && board[2][2] == "O")) && board[3][2] == " "
				board[3][2] = "O"
				i += 1#
			elseif ((board[1][2] == "X" && board[3][2] == "X") || (board[1][2] == "O" && board[3][2] == "O")) && board[2][2] == " "
				board[2][2] = "O"
				i += 1#
			elseif ((board[2][2] == "X" && board[3][2] == "X") || (board[2][2] == "O" && board[3][2] == "O")) && board[1][2] == " "
				board[1][2] = "O"
				i += 1#
			elseif ((board[1][3] == "X" && board[2][3] == "X") || (board[1][3] == "O" && board[2][3] == "O")) && board[3][3] == " "
				board[3][3] = "O"
				i += 1#
			elseif ((board[1][3] == "X" && board[3][3] == "X") || (board[1][3] == "O" && board[3][3] == "O")) && board[2][3] == " "
				board[2][3] = "O"
				i += 1#
			elseif ((board[2][3] == "X" && board[3][3] == "X") || (board[2][3] == "O" && board[3][3] == "O")) && board[1][3] == " "
				board[1][3] = "O"
				i += 1#
			elseif ((board[1][1] == "X" && board[2][2] == "X") || (board[1][1] == "O" && board[2][2] == "O")) && board[3][3] == " "
				board[3][3] = "O"
				i += 1#
			elseif ((board[1][1] == "X" && board[3][3] == "X") || (board[1][1] == "O" && board[3][3] == "O")) && board[2][2] == " "
				board[2][2] = "O"
				i += 1#
			elseif ((board[2][2] == "X" && board[3][3] == "X") || (board[2][2] == "O" && board[3][3] == "O")) && board[1][1] == " "
				board[1][1] = "O"
				i += 1#
			elseif ((board[1][3] == "X" && board[2][2] == "X") || (board[1][3] == "O" && board[2][2] == "O")) && board[3][1] == " "
				board[3][1] = "O"
				i += 1#
			elseif ((board[1][3] == "X" && board[3][1] == "X") || (board[1][3] == "O" && board[3][1] == "O")) && board[2][2] == " "
				board[2][2] = "O"
				i += 1#
			elseif ((board[2][2] == "X" && board[3][1] == "X") || (board[2][2] == "O" && board[3][1] == "O")) && board[1][3] == " "
				board[1][3] = "O"
				i += 1#

			else
				if board[1][1] == " "
					board[1][1] = "O"
					i += 1
				elseif board[1][2] == " "
					board[1][2] = "O"
					i += 1
				elseif board[1][3] == " "
					board[1][3] = "O"
					i += 1
				elseif board[2][1] == " "
					board[2][1] = "O"
					i += 1
				elseif board[2][2] == " "
					board[2][2] = "O"
					i += 1
				elseif board[2][3] == " "
					board[2][3] = "O"
					i += 1
				elseif board[3][1] == " "
					board[3][1] = "O"
					i += 1
				elseif board[3][2] == " "
					board[3][2] = "O"
					i += 1
				elseif board[3][3] == " "
					board[3][3] = "O"
					i += 1
				end
			end
			println("The Computer has made a move.")
			println("")
			if Game_Over() == 2
				winstate = "You Lose, Better luck next time!!"
				break
			end
		end
	end

	display()
	println("")
	println("GaMe oVeR!")
	println(winstate)
end

if choice == "B"
        B()
        println("")
	println("Press Q to quit and any other key to play again. ")
	choice2 = readline()
	if choice2 == "Q"
		break 
	end
elseif choice == "A"
	A()
	println("")
	println("Press Q to quit and any other key to play again. ")
	choice2 = readline()
	if choice2 == "Q"
		break 
	end
else 
	println("Invalid choice. Please enter either A or B.")
	println("")
end
end

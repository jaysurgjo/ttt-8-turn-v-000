def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
   user_input.to_i - 1
end

def move(board,index,token="X")
  board[index] = token
end

def valid_move?(board, index)
    !position_taken?(board, index) && index.between?(0, 8)
  end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)

  
  if valid_move?(board, index)
    move(board,index)
  else 
    turn(board)
    end
      display_board(board)
  end
  

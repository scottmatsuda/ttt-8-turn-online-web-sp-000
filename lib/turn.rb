def turn(board)
  
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else 
    while !valid_move?(board, index) do
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
    end
    move(board, index, character = "X")
    display_board(board)
  end
end


def valid_move?(board, index)

 if position_taken?(board, index)
    return false
  end
  
  if !index.between?(0, 8)
    return false
  end
 
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  end
  
  if index.between?(0, 8) && board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return true
  end

end


def position_taken?(board, index)
  
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
  
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input_integer = input.to_i
  return board_position = input_integer - 1
end

def move(board, index, character = "X")
  return board[index] = character
end


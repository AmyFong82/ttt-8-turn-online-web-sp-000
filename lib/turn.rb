def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "-----------"
end

def position_taken?(board, index)
  (board[index] == " " || board[index] == "" || board[index] == nil)?
  false : true
end

def valid_move?(board, index)
  (index.between?(0,8) && !position_taken?(board, index))
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, player="X")
  board[index] = player
end

def turn(board)
  newMove = valid_move?(board, index)
  until newMove == true
    puts "Please enter 1-9:"
    input = gets.strip
    input_to_index(input)
  end
  move(board, index, player="X")
end

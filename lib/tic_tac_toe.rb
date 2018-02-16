WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  a = board
  count = 0
  c1 = 0
  board.each do |ca|
    if ca != "X" && ca != "O"
      count += 1
    end
  end

alpha = nil
  if count < 9
    WIN_COMBINATIONS.each do |combination|
      win_op_1 = combination[0]
      win_op_2 = combination[1]
      win_op_3 = combination[2]
      position_1 = board[win_op_1]
      position_2 = board[win_op_2]
      position_3 = board[win_op_3]

      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        alpha = combination
      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        alpha = combination
      end
    end
if alpha == nil
  return false
else
  return alpha
end
elsif count == 9
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
  return input.to_i - 1
end

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
     combo.all? {|index| board[index]=="X"} || combo.all? {|index| board[index]=="O"}
end
end

def full?(board)
  board.all? {|index| index=="X" || index=="O"}
end

def draw?(board)
  if full?(board) && !won?(board) 
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
  return won?(board).values_at 
else 
  return nil
end
end 
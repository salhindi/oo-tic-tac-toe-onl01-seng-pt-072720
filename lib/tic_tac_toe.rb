class TicTacToe
  
  def initialize(board = nil)
    @board = board || @board = Array.new(9, " ")
  end
  
  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [1,4,7], [2,5,8], [0,3,6], [0,4,8], [2,4,6]]
  
def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "-----------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "-----------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
      end
      
      def input_to_index(user_input)
        user_input.to_i - 1
      end
      
      def move(index, token = "X")
        @board[index] = token
      end
      
      def position_taken?(index)
       @board[index] == "X" || @board[index] == "O"
       #tarnary operator wouldnt work ??? 
      end
      
      def valid_move?(index)
        index.between?(0, 8) && !position_taken?(index)
      end
      
      def turn_count
        turns = 0 
        @board.each do |position|
         if position == "X" || position == "O" 
           turns += 1 
        end
      end
    turns
    end
    
    def current_player
      #we want to us modulo operato(checks remainder of division operation)
      if turn_count % 2 == 0
        "X"
      else
        "O"
      end
    end
    
    def turn
      puts "What's your move, 1-9?"
      user_input = gets.strip
      index = input_to_index(user_input)
      token = current_player
      if valid_move?(index)
<<<<<<< HEAD
        move(index, token) 
=======
        move(index, token = "X") 
>>>>>>> a2e3ab9c623a224c8c1adbf78b9e9988a7b3fdf8
        display_board
        else
          turn 
    end
    end
    
    def won?
    WIN_COMBINATIONS.find do |x|
      if (@board[x[0]]) == "X" && (@board[x[1]]) ==  "X" && (@board[x[2]]) == "X"
      return x
      elsif (@board[x[0]]) == "O" && (@board[x[1]]) ==  "O" && (@board[x[2]]) == "O"
      return x
    end
      false
    end
  end
  
  def full?
    #use enumerator
  if @board.all? {|space| space != " "}
      return true
      elsif @board.any? {|space| space == " "}
        return false
      end
    end
  
  def draw?
    full? and !won?
  end
  
  def over?
    if draw?
      return true
      elsif won?
      true
    elsif @board.any? {|space| space == " "}
    return false
  end
end

def winner
  WIN_COMBINATIONS.find do |x| 
    if (@board[x[0]]) == "X" && (@board[x[1]]) == "X" && (@board[x[2]]) == "X"
      return "X"
      elsif
      (@board[x[0]]) == "O" && (@board[x[1]]) == "O" && (@board[x[2]]) == "O"
      return "O"
    end
  end
end

def play
 until over?
 turn
end

  if won? 
<<<<<<< HEAD
  puts "Congratulations #{winner}!"
  elsif draw? 
  puts "Cat's Game!"
=======
  puts "Congratulation Winner!"
  elsif draw? 
  puts "The game ended in a draw."
>>>>>>> a2e3ab9c623a224c8c1adbf78b9e9988a7b3fdf8
  end
end
end



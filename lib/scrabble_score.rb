class String
  define_method(:scrabble_score) do

    if self == ""
      0
    else
      #array of letters from splitting string
      letters = self.upcase()
      keys_array = letters.split("")

      #hash table that stores scores of letters
      scores = Hash.new()

      scores = { "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1, "D" => 2, "G" => 2, "B" => 3, "C" => 3, "M" => 3, "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4, "K" => 5, "J" => 8, "X" => 8, "Q" => 10, "Z" => 10 }

      total = 0
      # idiot = 0
      keys_array.each() do |letter|
        if (("a".."z").include?(letter) || ("A".."Z").include?(letter)).!()
          # idiot += 1
          total = "what what!"
          break
        else
          total += scores.fetch(letter)
        end
      end
      # if idiot > 0
        # total = "what what!"
      # end
      total
    end
  end
end

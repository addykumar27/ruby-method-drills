###########################
#### LOOPS & ITERATORS ####
###########################
def count_spaces string
  count = 0
  string.each_char do |char|
    if char == ' '
       count += 1
     end
  end
  count
end 
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces

def string_lengths array
    result = []
    array.each do |num|
      result.push(num.length)
    end
  result 
end 
# takes in an array of strings
# returns an array containing the lengths of the strings

def remove_falsy_values list
    list.select {|object| !!object}
end
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list

def exclude_last sequence
    sequence[0..-2]   
end

  # takes in an array or string
  # removes the last item from the array or string
  # returns it

def exclude_first sequence
    sequence[1..-1]
end
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

def exclude_ends sequence
  sequence[1..-2]

end
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string

def select_every_even list
  list.select.with_index {|item, index| item if index.even? }
end 
  # takes in an array
  # returns a list of even-indexed items from the input

def select_every_odd list
  list.select.with_index {|item, index| item if index.odd? }
end 
  # takes in an array
  # returns a list of odd-indexed items

#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol

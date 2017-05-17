#########################
#### USING ARGUMENTS ####
#########################
 def say_hello
   'hello'
 end


def echo string
  string
end


def eddie_izzards_height(heel_height=0)
  67 + heel_height
end

  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result



def how_many_args *args
  args.length
end
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args

def find_answer keyword={}
  keyword[:answer]
end 
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments

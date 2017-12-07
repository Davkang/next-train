# YOUR CODE HERE
#                   i         1
train_schedule = [["train 1", 2],
["Train 2", 5],
["Train 3", 7.5],
["Train 4", 8.5],
["Train 5", 9],
["Train 6", 10],
["Train 7", 11.5],
["Train 8", 13.5],
["Train 9", 14.5],
["Train 10", 17],
["Train 11", 18],
["Train 12", 19],
["Train 13", 24]]



while true
  puts "Hello, welcome to the WestWorld. What time are you leaving?"
  input = gets.chomp

  # change input to float. if it can't change it to float, instead of terminating the program and printing out the error,
  # use rescue to store false
  input = Float(input) rescue false

  # if input is false then print
  if !input
    puts "Sorry, I don't understand that time.\n"

  else
    i = 0
    while input > train_schedule[i][1]
      i += 1
      if i == train_schedule.length
        break
      end
    end

    if i < train_schedule.length
      puts "You should catch #{train_schedule[i][0]} leaving at #{train_schedule[i][1]}"


      if i == train_schedule.length-1
          puts " ***DON'T STOP...BELIEVIN'!***

                  Just a small town girl
                  Living in a lonely world
                  She took the midnight train going anywhere
                  Just a city boy
                  Born and raised in South Detroit
                  He took the midnight train going anywhere

                  A singer in a smoky room
                  A smell of wine and cheap perfume
                  For a smile they can share the night
                  It goes on and on and on and on

                  Strangers waiting, up and down the boulevard
                  Their shadows searching in the night
                  Streetlights people, living just to find emotion
                  Hiding, somewhere in the night."
      end
    else
      puts "no train"
    end

    break
  end
end

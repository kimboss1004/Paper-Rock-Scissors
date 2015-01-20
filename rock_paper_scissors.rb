#Make a rock paper scissor game that allows user to pick a rock,paper or scissor. 
#At the same time, the computer will randomly choose rock paper or scissor.
#Then it will compare the two and see who wins. In the end it will ask user if he wants
#to play again

a = ['P', 'R', 'S']
play = 'y'

while play == 'y' 
  puts
  puts "Play Paper Rock Scissor! "
  print "Choose (P,R,S): "
  user_choice = gets.chomp.upcase

  computer_choice = a.shuffle[0]

  if user_choice == computer_choice
   answer = "Tie"

  elsif user_choice == 'P' && computer_choice == 'R'
   answer = "Win!"

  elsif user_choice == 'R' && computer_choice == 'S'
   answer = "Win!"

  elsif user_choice == 'S' && computer_choice == 'P'
    answer = "Win!"

  else answer = "Lost!"

  end
  puts
  puts "You #{answer} \n---  #{user_choice}  -VS-  #{computer_choice}  ---  "
  puts
  puts "Would you like to play again?(y/n)"
  play = gets.chomp.downcase
  puts
end

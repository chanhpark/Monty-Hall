switch_wins = 0
stay_wins = 0
games = (ARGV[0].to_i) #passes an argument to the command-line

games.times do
  car = rand(0..2)  #car is put behind random door
  choice = rand(0..2)  #user picks a door

  goatdoor = ([0, 1, 2] - [car] - [choice]).first #finding which door is a goat door by subtracting car door# and your choice door#
  switch = ([0, 1, 2] - [goatdoor] - [choice]).first #finding out when you switch your choice will give you a win or a loss

  if car == switch  #if the random car door# is equal to the switched # increase your switched_win
    switch_wins += 1
  end  #end if

  if car == choice #if the random car door# is equal to your choice # increase your stay_wins
    stay_wins += 1
  end  #end if
end  #end do

puts "Percentage games guessed correctly:"
puts "Wins from switching: #{((switch_wins.to_f / games.to_f) * 100.0).round(2)}% (#{switch_wins.to_i})"
puts "Wins from staying: #{((stay_wins.to_f / games.to_f) * 100.0).round(2)}% (#{stay_wins.to_i})"

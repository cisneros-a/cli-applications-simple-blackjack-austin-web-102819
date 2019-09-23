def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  dealt_card = rand(1..11)
  dealt_card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.strip
  input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end


def initial_round
  a = deal_card
  b = deal_card
  card_total = a + b
  display_card_total(card_total)
  card_total
end



def invalid_command
  puts "Please enter a valid command"
end


def hit?(card_total)
  prompt_user
  response = get_user_input
  if response === 's'
     card_total
  elsif response === 'h'
    card_total += deal_card
  else
    invalid_command
    hit?(card_total)
  end
  card_total
end

def runner
  welcome
card_total = initial_round
until card_total > 21 do
  card_total = hit?(card_total)
  display_card_total(card_total)
end
end_game(card_total)
end

runner

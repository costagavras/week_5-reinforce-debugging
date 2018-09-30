
# Example to build:
# Do you want to pick up queen of spades?y
# Do you want to pick up 2 of clubs?n
# Do you want to pick up 3 of diamonds?n
# Do you want to pick up jack of spades?y
# Do you want to pick up queen of hearts?y
# Your new hand is:
# queen of spades
# jack of spades
# queen of hearts
# Your task is to copy this broken code into a Ruby file and try to fix the bug.



def select_cards(possible_cards, hand)
  counter_current_card = 0
  possible_cards.each do |current_card|
      counter_current_card +=1
      print "Do you want to pick up #{current_card}?"
      answer = gets.chomp
        if hand.length < 3
          if answer.downcase == 'y'
            hand << current_card
          end
        else
          puts "---------!!!!!---------"
          puts "Sorry. You're only allowed 3 cards max."
          break
        end
        while counter_current_card - hand.length > 2 do
          puts "You must pick this card to have a hand of 3 cards exactly! Are you picking it up? (y/n)"
          answer = gets.chomp
          if answer.downcase == 'y'
            hand << current_card
          else
            puts "Wrong answer. Let's do it again."
          end
        end
  end
    return hand
end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")
puts
puts "Your new hand is: \n#{display_hand}"

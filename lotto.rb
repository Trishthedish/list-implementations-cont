require './array-list.rb'
require './linked-list.rb'
require 'awesome_print'
class Lotto
  def initialize
    @ticket = ArrayList.new
    while @ticket.size < 5
      auto_num = rand(55) + 1
      if !@ticket.include?(auto_num)
        @ticket.add(auto_num)
      end
    end
  end

  def display_ticket
    @ticket.sort.display
  end
end


# sort method are needed.
# reverse method are needed.
lotto_sim = Lotto.new

ap "Your ticket is......"
ap lotto_sim.display_ticket




# Assignment
# reverse is # 1 questions asked.
# + Let's modify `lotto.rb` so that ticket numbers are displayed in ascending order. Do this by adding `@ticket.sort` to the `display_ticket` method and add this functionality to both `array-list.rb` and `linked-list.rb`
#   + Add a method `sort` to `array-list.rb`
#   + Add a method `sort` to `linked-list.rb`
# + Write a method `reverse` for both `array-list.rb` and `linked-list.rb`

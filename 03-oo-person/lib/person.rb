require "pry"

class Person
  attr_reader :name, :happiness, :hygiene, :life_points
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @life_points = 9

    # TODO: keep track of all people being created
  end

  def hygiene=(new_hygiene_value)
    if new_hygiene_value >= 10
      @hygiene = 10
    elsif new_hygiene_value <= 0
      @hygiene = 0
    else
      @hygiene = new_hygiene_value
    end
  end

  def happiness=(new_happiness_value)
    if new_happiness_value >= 10
      @happiness = 10
    elsif new_happiness_value <= 0
      @happiness = 0
    else
      @happiness = new_happiness_value
    end
  end

  def take_bath
    self.hygiene = self.hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = self.hygiene - 3
    self.happiness = self.happiness + 2
    "♪ another one bites the dust ♫"
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    increase_life_points
    self.bank_account = self.bank_account + salary
    "all about the benjamins"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      friend.happiness = friend.happiness - 2
      self.happiness = self.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      friend.happiness = friend.happiness + 1
      self.happiness = self.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

  private

  def increase_life_points
    @life_points = @life_points + 1
  end
end

p1 = Person.new("raffy")
p1.get_paid(100)

# p1.increase_life_points
# binding.pry

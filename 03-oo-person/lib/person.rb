require "pry"

class Person
  attr_reader :name, :bank_account, :happiness, :hygiene
  attr_writer :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
    if points >= 0 && points <= 10
      @happiness = points
    elsif points > 10
      @happiness = 10
    else
      @happiness = 0
    end
  end

  def hygiene=(points)
    if points >= 0 && points <= 10
      @hygiene = points
    elsif points > 10
      @hygiene = 10
    else
      @hygiene = 0
    end
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = 4 + self.hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = self.hygiene - 3
    self.happiness = self.happiness + 2

    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3

    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness = person.happiness - 2
      self.happiness = self.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness = person.happiness + 1
      self.happiness = self.happiness + 1
      "blah blah sun blah rain"
    elsif topic == "programming"
      "blah blah blah blah blah"
    end
  end
end

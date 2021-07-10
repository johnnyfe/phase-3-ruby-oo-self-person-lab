# your code goes here
class Person
    attr_accessor  :bank_account 
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10 
        @happiness = 0  if @happiness < 0 
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10 
        @hygiene = 0  if @hygiene < 0 
    end

    def happy?
       return @happiness > 7
    end

    def clean?
        return @hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
         "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend, self].each {|person| person.happiness += 3 }
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        group = [self,person]
        if topic == "politics" 
            group.each {|x|x.happiness -=2}
            first, second = ["partisan", "lobbyist"]
            
        elsif topic == "weather" 
            group.each {|x|x.happiness +=1}
            first, second = ["sun", "rain"]
        end
        first ||="blah"
        second ||="blah"
        "blah blah #{first} blah #{second}"
    end
end
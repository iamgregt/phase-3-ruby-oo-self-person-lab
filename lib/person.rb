require "pry"

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value) 
        @happiness = value.clamp(0,10)
    end

    def hygiene=(value)
        @hygiene = value.clamp(0,10)
    end

    def happy?
        happiness > 7 ? true : false
    end

    def clean?
        hygiene > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = happiness + 2
        self.hygiene = hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness = friend.happiness + 3
        self.happiness = happiness + 3
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

end


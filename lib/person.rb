# your code goes here

require "pry"

class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num.clamp(0, 10)
    end

    def hygiene=(num)
        # you can use an if statement as well so you dont go over a certain number
        # if num > 10
        #     @hygiene = 10
        # elsif num < 0
        #     @hygiene = 0
        # else
        #     @hygiene = num
        # end
        @hygiene = num.clamp(0, 10) # .clamp method can restric values in between numbers
    end

    def clean? # use question mark to check true or false
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4) # you call self on the hygiene method
        # another way of writing it ---- self.hygiene = @hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness + 2)
        self.hygiene=(@hygiene - 3)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        #binding.pry
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end

    

end
# I really like all your code comments! In Ruby we generally do a comment above a line instead of after it.
# Wherever we are place comments, we make sure to leave a space between the "#" and the start of the comment line.
class Person  #create a person class
    # You should leave a space between the "attr_reader" and the ":name", :name is a datatype called Symbol and stands on its own.
    # Nice job limiting changeability by only creating a reader method for the name!
    attr_reader:name   #attr_reader=>can not change
    attr_accessor:bank_account, :happiness, :hygiene
    #attr_accesso=>reader&writer,can change
    
    #that is initialized with a name (can't change)
    #initialized with a bank_account of $25
    ##initialized with both happiness and hygiene's index value = 8
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    # Your end here should go to the left to be flush with your def. 
    # Also, check the setting in your text editor to make sure you tab using 2 spaces, instead of 4. Ruby style only uses 2
      end
#########################################
    def happiness=(index)
        # Nice work here and in the hygiene setter method. 
        # What condition might you need to add if you were worried about a user providing a string instead of the desired integer? 
        if index > 10
            @happiness = 10
        elsif index < 0
            @happiness = 0
        # Now that you understand how to "clamp" a value to a given range using conditionals,
        # You should look up Ruby's clamp method! https://apidock.com/ruby/Comparable/clamp
        else @happiness = index
        end 
    end
#########################################
    def hygiene=(index)
        if index > 10
            # Here and in the above method, you could also use the attr_accessors you created
            # in the beginning of the class:
            # self.hygiene = 10
            @hygiene = 10
        elsif index < 0
            # self.hygiene = 0
            @hygiene = 0
            
        else 
            # self.hygiene = index (also I'm moving this into the else "area" instead of next to the word.
            @hygiene = index
        end 
    end
#########################################
    def happy? 
        # This boolean statement will return true or false all on its own. 
        # What if you removed everything from this method but the statement itself?
        if @happiness > 7
            return true
        else 
            return false
        end
    end
#########################################
    def clean? 
        # See happy? above
        if @hygiene > 7
            return true
        else 
            return false
        end
    end
#########################################    
    def get_paid(salary)
        # or self.bank_account += salary
        @bank_account += salary
        return "all about the benjamins"
    end
#########################################  
    def take_bath
       self.hygiene += 4
       # Make sure to line up your indentation. Looks like the return is an extra space in.
       # The code we write will grow very complex within a few weeks. Clean lines make it more readable.
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
#########################################
    def work_out
      # The bodies of this and the call_friend method should be indented like this comment is.
      # (And this one)
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
    end 
#########################################
    def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    return "Hi #{person.name}! It's #{self.name}. How are you?"
    end 
#########################################
    def start_conversation(person,topic)
        if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        return "blah blah partisan blah lobbyist"
        ###
        elsif topic == "weather"
        self.happiness += 1
        person.happiness += 1
        return "blah blah sun blah rain"
        ###
        else 
        return "blah blah blah blah blah"
        end
    end
#########################################
end  

class Dog


    @@all = []
    @@name = []
    # attr_accessor :name # this is a class variable and will store every instance of the Dog class


   
    def initialize(name)
        @name = name
        save # self (the instance running at the moment) is shoveled into the class variable @@ all. This is returned into the @@all variable set to the empty array.
        @@name << name

    end

    def name=(name)
        @name = name
    end

    def name
        @name
    end
    

    # this is our reader class method. Recall that to define a class method we use the def self.method_name syntax
    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        puts @@name[0..2] # This doesn't seem right. For some reason it does NOT want all (Snoopy).
    end

    def save
        @@all << self
    end
    # Rather than pushing self into the @@all variable inside of #initialize, let's extract this action into its own method. Call this method #save. The method should handle the task of pushing self into @@all. Once written, update your code in #initialize so that it uses #save.


end


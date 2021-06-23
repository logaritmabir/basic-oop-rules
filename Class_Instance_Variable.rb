class First
    @population = 0 #miras alma yoluyla classs instance variable aktarılmaz değeri Nil olarak geçer

    def initialize
        self.class.population += 1
    end

    def self.population
        @population
    end

    def self.population=(value)
        @population = value
    end
end

class Sec < First
    @population = 0
end

def main
    a = First.new
    b = Sec.new
    c = Sec.new
    puts First.population
    puts Sec.population
end

main
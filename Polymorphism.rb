#encoding: utf-8

class Person
    attr_reader :name , :surname , :age , :job
    def initialize(name,surname,age,job)
        @name = name
        @surname = surname
        @job = job
        @age = age
    end
    def hello
        puts "Hello theré! I'm #{@name} #{@surname}.#{@age}.#{@job}"
    end
end

class Doctor < Person
    def initialize(name,surname,age,job,degree)
        super(name,surname,job,age)
        @degree = degree
    end
    def hello
        super
        puts "My doc tier is #{@degree}"
    end
end

class Lawyer < Person
    def initialize(name,surname,age,job,area)
        super(name,surname,age,job)
        @area = area
    end
    def hello
        super
        puts "I'm working in #{@area} area"
    end

end

Nikılıs = Person.new("Nikılıs","Keyc",23,"Actor")
Nikılıs.hello
Doc = Doctor.new("Ceysın","Sitethım",31,"Actor",3)
Doc.hello
Law = Lawyer.new("Arnılt","Şıvaynştayger",22,"Robot","Judge")
Law.hello
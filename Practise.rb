class Robot
    def initialize(isim,sahip)
        @isim = isim
        @sahip = sahip
    end
    def isim
        return @isim #Reader
    end
    def sahip
        return @sahip #Reader
    end
    def isim=(isim)
        return @isim = isim #Writer
    end
    def sahip=(sahip)
        return @sahip = sahip #Writer
    end
end


turk_bot = Robot.new("Türk Robot","Sıtkı")
puts turk_bot.inspect
turk_bot.isim = "Turkish Robot"
turk_bot.sahip = "Turk"
puts turk_bot.inspect
puts "--------------------------------------------"
class Brobot
    attr_accessor :isim,:sahip
    def initialize(isim,sahip)
        @isim = isim
        @sahip = sahip
    end
    def selam_ver
        puts "Merhaba ben #{@isim}. Sahibim #{@sahip} tarafından oluşturuldum"
    end
end
bturk_bot = Brobot.new("Barzo Robot","Cafer")
bturk_bot.selam_ver
bturk_bot.isim = "RubyRob"
bturk_bot.sahip = "Şükrü"
bturk_bot.selam_ver

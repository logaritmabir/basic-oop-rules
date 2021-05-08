class Omurgalilar
    def ye
        puts "Yemek yiyor..."
    end
    def ic
        puts "Su içiyor..."
    end
    def uyu
        puts "Uyuyor"
    end
end
class Hareket
    def surun
        puts "Sürünüyor..."
    end
    def adim
        puts "Adım atıyor..."
    end
    def uc
        puts "Uçuyor..."
    end
end
class Insan < Omurgalilar
    def initialize
        @hareket = Hareket.new
    end
    def ye
        super()
    end
    def ic
        super()
    end
    def uyu
        super()
    end
    def hareket
        puts "#{@hareket.adim}"
    end
end
class Kus < Omurgalilar
    def initialize
        @hareket = Hareket.new
    end
    def ye
        super()
    end
    def ic
        super()
    end
    def uyu
        super()
    end
    def hareket
        puts "#{@hareket.uc}"
    end
end
class Timsah < Omurgalilar
    def initialize
        @hareket = Hareket.new
    end
    def ye
        super()
    end
    def ic
        super()
    end
    def uyu
        super()
    end
    def hareket
        puts "#{@hareket.surun}"
    end
end

Insan1 = Insan.new
Insan1.ye
Insan1.ic
Insan1.uyu
Insan1.hareket

Kus1 = Kus.new
Kus1.ye
Kus1.ic
Kus1.uyu
Kus1.hareket

Timsah1 = Timsah.new
Timsah1.ye
Timsah1.ic
Timsah1.uyu
Timsah1.hareket


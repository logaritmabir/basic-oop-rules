class Sekil
    def bilgialma
    end
    def ekrandagosterme
        puts "#{self.class} in alanı : #{self.alan}"
    end
    def alan
    end
    def hacim
    end
end
class IkiBoyutluSekil < Sekil
    attr_reader :x , :y  
    def initialize(x,y)
        @x = x
        @y = y
    end
    def alan
        raise NotImplementedError
    end
    def bilgialma
        puts "İki boyutlu #{self.class} oluşturuldu..."
    end
    def ekrandagosterme
        super()
    end
end
class UcBoyutluSekil < IkiBoyutluSekil
    def initialize(x,y,z)
        super(x,y)
        @z = z 
    end
    def bilgialma
        puts "Üç boyutlu #{self.class} oluşturuldu..."
    end
    def alan
        raise NotImplementedError
    end
    def hacim
        raise NotImplementedError
    end
    def ekrandagosterme
        puts "#{self.class} hacim artırma çarpanı : #{@hacim_artirma}"
        super()
        puts "#{self.class} in hacmi : #{self.hacim}"
        puts "#{self.class} in yeni hacmi : #{self.hacimArtirma}"
    end
end
class Kare < IkiBoyutluSekil
    def initialize(kenar)
        @kenar = kenar
        bilgialma
        ekrandagosterme
    end
    def ekrandagosterme
        puts "Karenin kenar uzunluğu : #{@kenar}"
        super()
    end
    def bilgialma
        super()
    end
    def alan
        @kenar**2
    end
end
class Daire < IkiBoyutluSekil
    def initialize(yaricap)
        @yaricap = yaricap
        bilgialma
        ekrandagosterme
    end
    def ekrandagosterme
        puts "Dairenin yarıçapı : #{@yaricap}"
        super()
    end
    def bilgialma
        super()
    end
    def alan
        (@yaricap**2)*3.14
    end
end
class Kup < UcBoyutluSekil
    def initialize(kenar,hacim_artirma)
        @kenar = kenar
        @hacim_artirma = hacim_artirma
        bilgialma
        ekrandagosterme
    end
    def ekrandagosterme
        puts "Küpün kenar uzunluğu : #{@kenar}"
        super()
    end
    def bilgialma
        super()
    end
    def alan
        (@kenar**2)*6
    end
    def hacim
        @kenar**3
    end
    def hacimArtirma
        self.hacim*@hacim_artirma
    end
end
class Kure < UcBoyutluSekil
    def initialize(yaricap,hacim_artirma)
        @yaricap = yaricap
        @hacim_artirma = hacim_artirma
        bilgialma
        ekrandagosterme
    end
    def ekrandagosterme
        puts "Kürenin yarıçap uzunluğu : #{@yaricap}"
        super()
    end
    def bilgialma
        super()
    end
    def alan
        4*3.14*(@yaricap**2)
    end
    def hacim
        (4/3)*(3.14)*(@yaricap**2)
    end
    def hacimArtirma
        self.hacim*@hacim_artirma
    end
end
def main
    print "Oluşturmak istediğiniz nesneyi giriniz (KARE,DAIRE,KUP,KURE,CIKIS) : "
    command = gets.chomp
    until (command == 'CIKIS')
        if(command == 'KARE')

            print "Kenar uzunluğu giriniz : "
            kare_kenari = gets.to_i
            puts "-------------------------------------------------"
            Kare.new(kare_kenari)
            puts "-------------------------------------------------"

            print "Oluşturmak istediğiniz nesneyi giriniz (KARE,DAIRE,KUP,KURE,CIKIS) : "
            command = gets.chomp

        elsif(command == 'DAIRE')

            print "Yarıçap uzunluğu giriniz : "
            daire_yaricapi = gets.to_i
            puts "-------------------------------------------------"
            Daire.new(daire_yaricapi)
            puts "-------------------------------------------------"

            print "Oluşturmak istediğiniz nesneyi giriniz (KARE,DAIRE,KUP,KURE,CIKIS) : "
            command = gets.chomp

        elsif(command == 'KUP')

            print "Kenar uzunluğu giriniz : "
            kup_kenari = gets.to_i
            print "Hacim artırma çarpanını giriniz : "
            kup_hacimArtirma = gets.to_i
            puts "-------------------------------------------------"
            Kup.new(kup_kenari,kup_hacimArtirma)
            puts "-------------------------------------------------"

            print "Oluşturmak istediğiniz nesneyi giriniz (KARE,DAIRE,KUP,KURE,CIKIS) : "
            command = gets.chomp

        elsif(command == 'KURE')
            
            print "Yarıçap uzunluğu giriniz : "
            kure_yaricap = gets.to_i
            print "Hacim artırma çarpanını giriniz : "
            kure_hacimArtirma = gets.to_i
            puts "-------------------------------------------------"
            Kure.new(kure_yaricap,kure_hacimArtirma)
            puts "-------------------------------------------------"

            print "Oluşturmak istediğiniz nesneyi giriniz (KARE,DAIRE,KUP,KURE,CIKIS) : "
            command = gets.chomp

        else
    
            print "Hatalı tuşlama yaptınız..Tekrardan tuşlayınız : "
            command = gets.chomp
    
        end
    end
end
main

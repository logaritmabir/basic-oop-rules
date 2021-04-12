#encoding: utf-8

class Hastane_Ilac
    @@ilac_sayisi = 0   #İlaç sayısına erişim sağlamak için tanımlanmış sınıf özelliği
    attr_reader :barkod_numarasi, :adi, :turu, :uretici_firmasi ,:stok_sayisi, :ait_oldugu_birim #Oluşturulacak nesnelerin özelliklerini "OKUYUCU"
    def initialize(barkod_numarasi,adi,turu,uretici_firmasi,stok_sayisi,ait_oldugu_birim)   #Oluşturulacak nesnelerin ilk özelliklerini tanımlayıcı metot
        @barkod_numarasi = barkod_numarasi
        @adi = adi
        @turu = turu
        @uretici_firmasi = uretici_firmasi
        @stok_sayisi = stok_sayisi
        @ait_oldugu_birim = ait_oldugu_birim
        @@ilac_sayisi += 1
    end
    def Hastane_Ilac.ilac_sayisi    #İlaç sayısını geri döndüren okuyucu bir sınıf metotu
        @@ilac_sayisi
    end
    def to_s
        "Barkod Numarası : #{@barkod_numarasi} , Ürün : #{@adi} , Türü : #{@turu} , Üretici Firma  : #{@uretici_firmasi} , Stok Sayısı : #{@stok_sayisi} , Ait Olduğu Birim : #{@ait_oldugu_birim}  "
    end
end

puts "Ondokuz Mayıs Üniversitesi Tıp Fakültesi Hastane Bilgi Sistemine Hoş Geldiniz"
puts "-----------------------------------------------------------------------------"
print "Lütfen yapmak istediğiniz işleme ait komutu tuşlayınız(EKLE,LISTELE,CIKIS) : "
command = gets.chomp
nesneler = []
i = 0 

until (command == 'CIKIS')
    if(command == 'EKLE')
        
        print "Eklemek istediğiniz ürünün barkod numarasını giriniz : " #Oluşturalacak ilacın özelliklerinin girilmesi
        gecici_barkod = gets.chomp
        print "Eklemek istediğiniz ürünün adını giriniz : "
        gecici_ad = gets.chomp
        print "Eklemek istediğiniz ürünün türünü giriniz : "
        gecici_tur = gets.chomp
        print "Eklemek istediğiniz ürünün üretici firmasını giriniz : "
        gecici_uretici_firma = gets.chomp
        print "Eklemek istediğiniz ürünün stok sayısını giriniz : "
        gecici_stok_sayisi = gets.chomp
        print "Eklemek istediğiniz ürünün ait olduğu birimi giriniz : "
        gecici_ait_oldugu_birim = gets.chomp

        nesneler[i] = Hastane_Ilac.new(gecici_barkod,gecici_ad,gecici_tur,gecici_uretici_firma,gecici_stok_sayisi,gecici_ait_oldugu_birim) #Oluşturulan ilaçların depolanması
        i = i+1

        print "Ürün başarıyla oluşturuldu.Sıradaki işleminizi seçiniz(EKLE,LISTELE,CIKIS):"
        command = gets.chomp

    elsif(command == 'LISTELE')

        puts "Toplamda #{Hastane_Ilac.ilac_sayisi} adet ürün sisteme eklenmiştir.Eklenen ürünler : "
        nesneler.each do |element|  #Tüm ilaçların özelliklerinin yazdırılması
            puts element.to_s
        end
        print "Ürünler listelendi.Sıradaki işleminizi seçiniz(EKLE,LISTELE,CIKIS):"
        command = gets.chomp

    else

        print "Hatalı tuşlama yaptınız..Tekrardan tuşlayınız : "
        command = gets.chomp

    end
end
puts "Güle Güle..."
gets.chomp #Programın aniden kapanmaması için konulmuştur
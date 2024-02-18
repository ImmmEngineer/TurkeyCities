
import Foundation
import SwiftUI
import CoreLocation

struct City : Hashable, Codable, Identifiable {

    var plaka : Int
    var il_adi : String
    var hakkinda : String
    var isFavorite : Bool
    var id : Int
    var isFeatured : Bool
    
    var bölge : Category
    
    enum Category : String, CaseIterable, Codable{
        case ege = "Ege"
        case akdeniz = "Akdeniz"
        case marmara = "Marmara"
        case dogu = "Doğu Anadolu"
        case guneyDogu = "Güneydoğu Anadolu"
        case içAnadolu = "İç Anadolu"
        case karadeniz = "Karadeniz"
    }
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates : Coordinates
    
    var locationCoordinate : CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.lat,
            longitude: coordinates.lon)
    }
    struct Coordinates: Hashable, Codable{
        var lat : Double
        var lon : Double
    }
    
}

/*var sehirDizisi: [Sehir] = [
    Sehir(sehirIsmi: "Adana", gorselIsmi: "Adana"),
    Sehir(sehirIsmi: "Adıyaman", gorselIsmi: "Adıyaman"),
    Sehir(sehirIsmi: "Afyonkarahisar", gorselIsmi: "Afyonkarahisar"),
    Sehir(sehirIsmi: "Ağrı", gorselIsmi: "Ağrı"),
    Sehir(sehirIsmi: "Amasya", gorselIsmi: "Amasya"),
    Sehir(sehirIsmi: "Ankara", gorselIsmi: "Ankara"),
    Sehir(sehirIsmi: "Antalya", gorselIsmi: "Antalya"),
    Sehir(sehirIsmi: "Artvin", gorselIsmi: "Artvin"),
    Sehir(sehirIsmi: "Aydın", gorselIsmi: "Aydın"),
    Sehir(sehirIsmi: "Balıkesir", gorselIsmi: "Balıkesir"),
    Sehir(sehirIsmi: "Bilecik", gorselIsmi: "Bilecik"),
    Sehir(sehirIsmi: "Bingöl", gorselIsmi: "Bingöl"),
    Sehir(sehirIsmi: "Bitlis", gorselIsmi: "Bitlis"),
    Sehir(sehirIsmi: "Bolu", gorselIsmi: "Bolu"),
    Sehir(sehirIsmi: "Burdur", gorselIsmi: "Burdur"),
    Sehir(sehirIsmi: "Bursa", gorselIsmi: "Bursa"),
    Sehir(sehirIsmi: "Çanakkale", gorselIsmi: "Çanakkale"),
    Sehir(sehirIsmi: "Çankırı", gorselIsmi: "Çankırı"),
    Sehir(sehirIsmi: "Çorum", gorselIsmi: "Çorum"),
    Sehir(sehirIsmi: "Denizli", gorselIsmi: "Denizli"),
    Sehir(sehirIsmi: "Diyarbakır", gorselIsmi: "Diyarbakır"),
    Sehir(sehirIsmi: "Edirne", gorselIsmi: "Edirne"),
    Sehir(sehirIsmi: "Elazığ", gorselIsmi: "Elazığ"),
    Sehir(sehirIsmi: "Erzincan", gorselIsmi: "Erzincan"),
    Sehir(sehirIsmi: "Erzurum", gorselIsmi: "Erzurum"),
    Sehir(sehirIsmi: "Eskişehir", gorselIsmi: "Eskişehir"),
    Sehir(sehirIsmi: "Gaziantep", gorselIsmi: "Gaziantep"),
    Sehir(sehirIsmi: "Giresun", gorselIsmi: "Giresun"),
    Sehir(sehirIsmi: "Gümüşhane", gorselIsmi: "Gümüşhane"),
    Sehir(sehirIsmi: "Hakkari", gorselIsmi: "Hakkari"),
    Sehir(sehirIsmi: "Hatay", gorselIsmi: "Hatay"),
    Sehir(sehirIsmi: "Isparta", gorselIsmi: "Isparta"),
    Sehir(sehirIsmi: "Mersin", gorselIsmi: "Mersin"),
    Sehir(sehirIsmi: "İstanbul", gorselIsmi: "İstanbul"),
    Sehir(sehirIsmi: "İzmir", gorselIsmi: "İzmir"),
    Sehir(sehirIsmi: "Kars", gorselIsmi: "Kars"),
    Sehir(sehirIsmi: "Kastamonu", gorselIsmi: "Kastamonu"),
    Sehir(sehirIsmi: "Kayseri", gorselIsmi: "Kayseri"),
    Sehir(sehirIsmi: "Kırklareli", gorselIsmi: "Kırklareli"),
    Sehir(sehirIsmi: "Kırşehir", gorselIsmi: "Kırşehir"),
    Sehir(sehirIsmi: "Kocaeli", gorselIsmi: "Kocaeli"),
    Sehir(sehirIsmi: "Konya", gorselIsmi: "Konya"),
    Sehir(sehirIsmi: "Kütahya", gorselIsmi: "Kütahya"),
    Sehir(sehirIsmi: "Malatya", gorselIsmi: "Malatya"),
    Sehir(sehirIsmi: "Manisa", gorselIsmi: "Manisa"),
    Sehir(sehirIsmi: "Kahramanmaraş", gorselIsmi: "Kahramanmaraş"),
    Sehir(sehirIsmi: "Mardin", gorselIsmi: "Mardin"),
    Sehir(sehirIsmi: "Muğla", gorselIsmi: "Muğla"),
    Sehir(sehirIsmi: "Muş", gorselIsmi: "Muş"),
    Sehir(sehirIsmi: "Nevşehir", gorselIsmi: "Nevşehir"),
    Sehir(sehirIsmi: "Niğde", gorselIsmi: "Niğde"),
    Sehir(sehirIsmi: "Ordu", gorselIsmi: "Ordu"),
    Sehir(sehirIsmi: "Rize", gorselIsmi: "Rize"),
    Sehir(sehirIsmi: "Sakarya", gorselIsmi: "Sakarya"),
    Sehir(sehirIsmi: "Samsun", gorselIsmi: "Samsun"),
    Sehir(sehirIsmi: "Siirt", gorselIsmi: "Siirt"),
    Sehir(sehirIsmi: "Sinop", gorselIsmi: "Sinop"),
    Sehir(sehirIsmi: "Sivas", gorselIsmi: "Sivas"),
    Sehir(sehirIsmi: "Tekirdağ", gorselIsmi: "Tekirdağ"),
    Sehir(sehirIsmi: "Tokat", gorselIsmi: "Tokat"),
    Sehir(sehirIsmi: "Trabzon", gorselIsmi: "Trabzon"),
    Sehir(sehirIsmi: "Tunceli", gorselIsmi: "Tunceli"),
    Sehir(sehirIsmi: "Şanlıurfa", gorselIsmi: "Şanlıurfa"),
    Sehir(sehirIsmi: "Uşak", gorselIsmi: "Uşak"),
    Sehir(sehirIsmi: "Van", gorselIsmi: "Van"),
    Sehir(sehirIsmi: "Yozgat", gorselIsmi: "Yozgat"),
    Sehir(sehirIsmi: "Zonguldak", gorselIsmi: "Zonguldak"),
    Sehir(sehirIsmi: "Aksaray", gorselIsmi: "Aksaray"),
    Sehir(sehirIsmi: "Bayburt", gorselIsmi: "Bayburt"),
    Sehir(sehirIsmi: "Karaman", gorselIsmi: "Karaman"),
    Sehir(sehirIsmi: "Kırıkkale", gorselIsmi: "Kırıkkale"),
    Sehir(sehirIsmi: "Batman", gorselIsmi: "Batman"),
    Sehir(sehirIsmi: "Şırnak", gorselIsmi: "Şırnak"),
    Sehir(sehirIsmi: "Bartın", gorselIsmi: "Bartın"),
    Sehir(sehirIsmi: "Ardahan", gorselIsmi: "Ardahan"),
    Sehir(sehirIsmi: "Iğdır", gorselIsmi: "Iğdır"),
    Sehir(sehirIsmi: "Yalova", gorselIsmi: "Yalova"),
    Sehir(sehirIsmi: "Karabük", gorselIsmi: "Karabük"),
    Sehir(sehirIsmi: "Kilis", gorselIsmi: "Kilis"),
    Sehir(sehirIsmi: "Osmaniye", gorselIsmi: "Osmaniye"),
    Sehir(sehirIsmi: "Düzce", gorselIsmi: "Düzce")
]*/


import Foundation

class Yemekler {
    var yemekId:Int?
    var yemekAdi:String?
    var yemekResimAdi:String?
    var yemekFiyat:String?
    
    init() {
        
    }
    
    init(yemekId:Int,yemekAdi:String,yemekResimAdi:String,yemekFiyat:String) {
        self.yemekId = yemekId
        self.yemekAdi = yemekAdi
        self.yemekResimAdi = yemekResimAdi
        self.yemekFiyat = yemekFiyat
        
    }
    
}

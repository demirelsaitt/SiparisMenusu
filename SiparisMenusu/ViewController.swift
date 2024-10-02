import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yemeklerTableview: UITableView!
    //veri seti oluştur
    var yemeklerListesi = [Yemekler]()//Yemekler sınıfından veriler tutucak.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //eklenen protokollere tableview'i bağladık.
        yemeklerTableview.dataSource = self
        yemeklerTableview.delegate = self
        //yemek nesneleri oluştur
        let y1 = Yemekler(yemekId: 1, yemekAdi: "Ayran", yemekResimAdi: "ayran", yemekFiyat: "7.5")
        let y2 = Yemekler(yemekId: 2, yemekAdi: "Baklava", yemekResimAdi: "baklava", yemekFiyat: "25")
        let y3 = Yemekler(yemekId: 3, yemekAdi: "Fanta", yemekResimAdi: "fanta", yemekFiyat: "12")
        let y4 = Yemekler(yemekId: 4, yemekAdi: "Izgara Somon", yemekResimAdi: "izgarasomon", yemekFiyat: "225")
        let y5 = Yemekler(yemekId: 5, yemekAdi: "Izgara Tavuk", yemekResimAdi: "izgaratavuk", yemekFiyat: "150")
        let y6 = Yemekler(yemekId: 6, yemekAdi: "Kadayıf", yemekResimAdi: "kadayif", yemekFiyat: "75")
        let y7 = Yemekler(yemekId: 7, yemekAdi: "Kahve", yemekResimAdi: "kahve", yemekFiyat: "25")
        let y8 = Yemekler(yemekId: 8, yemekAdi: "Köfte", yemekResimAdi: "kofte", yemekFiyat: "100")
        let y9 = Yemekler(yemekId: 9, yemekAdi: "Lazanya", yemekResimAdi: "lazanya", yemekFiyat: "90")
        let y10 = Yemekler(yemekId: 10, yemekAdi: "Pizza", yemekResimAdi: "pizza", yemekFiyat: "150")
        let y11 = Yemekler(yemekId: 11, yemekAdi: "Su", yemekResimAdi: "su", yemekFiyat: "5")
        let y12 = Yemekler(yemekId: 12, yemekAdi: "Sutlaç", yemekResimAdi: "sutlac", yemekFiyat: "50")
        let y13 = Yemekler(yemekId: 13, yemekAdi: "Tiramisu", yemekResimAdi: "tiramisu", yemekFiyat: "75")
        let y14 = Yemekler(yemekId: 14, yemekAdi: "Makarna", yemekResimAdi: "makarna", yemekFiyat: "95")
        //veri kümesine ekleme
        yemeklerListesi.append(y1)
        yemeklerListesi.append(y2)
        yemeklerListesi.append(y3)
        yemeklerListesi.append(y4)
        yemeklerListesi.append(y5)
        yemeklerListesi.append(y6)
        yemeklerListesi.append(y7)
        yemeklerListesi.append(y8)
        yemeklerListesi.append(y9)
        yemeklerListesi.append(y10)
        yemeklerListesi.append(y11)
        yemeklerListesi.append(y12)
        yemeklerListesi.append(y13)
        yemeklerListesi.append(y14)


    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource,YemekTableViewCellProtocol {
    func siparişVer(indexPath: IndexPath) {
        let gelenVeri = yemeklerListesi[indexPath.row]
        print("\(gelenVeri.yemekAdi!) siparişi verildi.")
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 //kaç bölüm olucak
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yemeklerListesi.count //kaç tane veri olucak
    }
    //arayüzdeki şeyleri cell'e aktaracağız. Satır satır verileri işleyecek
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenVeri = yemeklerListesi[indexPath.row] //veriyi nesneye aktaracağız
        //hücredeki görsel nesnlere erişmek için cell oluşturacağız. id-si ile eriştik hücreye
        let cell = tableView.dequeueReusableCell(withIdentifier: "yemekHucre", for: indexPath) as! YemekTableViewCell
        
        cell.labelYemekAdi.text = gelenVeri.yemekAdi
        cell.labelYemekFiyat.text = "\(gelenVeri.yemekFiyat!) TL"
        cell.yemekResimImageView.image = UIImage(named: gelenVeri.yemekResimAdi!)
        //dinamik şekilde reism adını bağladık
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
        
    }
}

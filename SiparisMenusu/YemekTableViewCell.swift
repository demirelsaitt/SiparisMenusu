import UIKit

protocol YemekTableViewCellProtocol {
    func siparişVer(indexPath:IndexPath)
}

class YemekTableViewCell: UITableViewCell {
    
    @IBOutlet weak var yemekResimImageView: UIImageView!
    
    @IBOutlet weak var labelYemekAdi: UILabel!
    
    @IBOutlet weak var labelYemekFiyat: UILabel!
    
    var hucreProtocol:YemekTableViewCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
            
    }

    @IBAction func siparisVerButton(_ sender: Any) {
        hucreProtocol!.siparişVer(indexPath: indexPath!)
    }
}

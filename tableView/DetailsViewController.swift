//
//  DetailsViewController.swift
//  tableView
//
//  Created by Kodluyoruz Dernegi on 14.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBAction func button(_ sender: Any) {
        
        let uyariMesaji = UIAlertController(title: "Merhaba!", message: "Bootcamp başvuruları henüz başlamadı, takipte kal :)", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "Tabi efendim", style: UIAlertAction.Style.default) { UIAlertAction in
            //Ok butonuna tıklanınca olacaklar..
        }
        
        uyariMesaji.addAction(okButton)
        
        self.present(uyariMesaji, animated: true, completion: nil)
    }
    
    
    
    var bootcamps = ""
    var bootcampsGorselIsımleri = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        imageView.image = UIImage(named: bootcampsGorselIsımleri)
        label.text = bootcamps
        
    }
    


}

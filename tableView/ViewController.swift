//
//  ViewController.swift
//  tableView
//
//  Created by Kodluyoruz Dernegi on 14.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var bootcamps = [String]()
    var bootcampsGorselIsımleri = [String]()
    var secilenIsim = ""
    var secilenGorsel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        bootcamps.append("Bootcamp Tarihleri")
        bootcamps.append("Bootcamp Ise Yerlestirme Donemi")
        bootcamps.append("Istanbul")
        bootcamps.append("Izmir")
        bootcamps.append("Bursa")
        bootcamps.append("Adana")
        bootcamps.append("Mersin")
        bootcamps.append("Hatay")
        bootcamps.append("Sanliurfa")
        bootcamps.append("Gaziantep")
        
        
        
        bootcampsGorselIsımleri.append("bootcamp")
        bootcampsGorselIsımleri.append("2022")
        bootcampsGorselIsımleri.append("istanbul")
        bootcampsGorselIsımleri.append("izmir")
        bootcampsGorselIsımleri.append("bursa")
        bootcampsGorselIsımleri.append("adana")
        bootcampsGorselIsımleri.append("mersin")
        bootcampsGorselIsımleri.append("hatay")
        bootcampsGorselIsımleri.append("sanliurfa")
        bootcampsGorselIsımleri.append("gaziantep")
        
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bootcamps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = bootcamps[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            bootcamps.remove(at: indexPath.row)
            bootcampsGorselIsımleri.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = bootcamps[indexPath.row]
        secilenGorsel = bootcampsGorselIsımleri[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.bootcamps = secilenIsim
            destinationVC.bootcampsGorselIsımleri = secilenGorsel
        }
    }
    
}


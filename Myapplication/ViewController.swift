//
//  ViewController.swift
//  Myapplication
//
//  Created by Qahtani's MacBook Pro on 10/31/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celll", for: indexPath) as! Cellimage
        
        
        cell.mylabal.text = cities[indexPath.row].name
        
        
        return cell
        
        
    }
    
    
    
 
    
    
    @IBOutlet weak var mytabel: UITableView!
    
    
    
    var cities =  [
    City(name: "Rryadh", desc: "big", imge: ["","","",""]),
    City(name: "Najran", desc: "big", imge: ["","","",""]),City(name: "Jeddah", desc: "big", imge: ["","","",""])
    
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mytabel.delegate = self
        mytabel.dataSource = self
    }


}


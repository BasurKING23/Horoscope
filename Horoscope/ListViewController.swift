//
//  ViewController.swift
//  Horoscope
//
//  Created by Mañanas on 12/5/25.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var tableview: UITableView!
    
    var horoscopeList = Horoscope.getAll()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableview.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horoscopeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "loquemedelagana", for: indexPath) as! HoroscopeViewCell
        let horoscope = horoscopeList [indexPath.row]
        cell.render(horoscope: horoscope)
        return cell
    }
}


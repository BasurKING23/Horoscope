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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableview.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! DetailViewController
        let IndexPath = tableview.indexPathForSelectedRow!
        let horoscope = horoscopeList[IndexPath.row]
        detailVC.horoscope = horoscope
        tableview.deselectRow(at: IndexPath, animated: true)
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


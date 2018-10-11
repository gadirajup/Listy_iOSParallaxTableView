
//
//  ViewController.swift
//  Listy
//
//  Created by Prudhvi Gadiraju on 10/10/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getList().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell else {
            return UITableViewCell()
        }
        cell.configureCell(withCellImage: DataService.instance.getList()[indexPath.row].itemImageName, andCellLabel: DataService.instance.getList()[indexPath.row].itemLabel)
        return cell
    }
}


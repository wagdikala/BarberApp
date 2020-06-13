//
//  DayViewController.swift
//  BarberApp
//
//  Created by Wagdi Kala on 12/06/2020.
//  Copyright © 2020 Wagdi Kala. All rights reserved.
//

import UIKit

class DayViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTable()
        
    }
    
    func configureTable() {
        tableView.register(DayTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.backgroundView = UIView()
        tableView.backgroundView?.backgroundColor = K.dayBackground
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DayTableViewCell
        cell.hourLabel.text = "\(indexPath.row + 10):00"
        cell.halfHourLabel.text = "\(indexPath.row + 10):30"
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}


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
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! DayTableViewCell
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .lightGray
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}


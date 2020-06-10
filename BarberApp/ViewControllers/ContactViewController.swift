//
//  ContactViewController.swift
//  BarberApp
//
//  Created by Wagdi Kala on 09/06/2020.
//  Copyright © 2020 Wagdi Kala. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateNavigationBar()
        // Do any additional setup after loading the view.
    }
    
    func updateNavigationBar() {
        navigationItem.title = "צ ו ר   ק ש ר"
               let attributes = [NSAttributedString.Key.font: UIFont(name: "New Peninim MT", size: 24)!, NSAttributedString.Key.foregroundColor: UIColor.white]
               navigationController?.navigationBar.titleTextAttributes = attributes
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}

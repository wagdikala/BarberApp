//
//  SignupViewController.swift
//  BarberApp
//
//  Created by Wagdi Kala on 08/06/2020.
//  Copyright © 2020 Wagdi Kala. All rights reserved.
//

import UIKit
import Foundation

class SignupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateNavigationBar()
        // Do any additional setup after loading the view.
    }
    
    func updateNavigationBar() {
        navigationItem.title = "ה ר ש מ ה"
               let attributes = [NSAttributedString.Key.font: UIFont(name: "New Peninim MT", size: 24)!, NSAttributedString.Key.foregroundColor: UIColor.white]
               navigationController?.navigationBar.titleTextAttributes = attributes
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func checkBoxPressed(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
}

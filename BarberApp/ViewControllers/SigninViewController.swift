//
//  ViewController.swift
//  BarberApp
//
//  Created by Wagdi Kala on 08/06/2020.
//  Copyright © 2020 Wagdi Kala. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userNameTextField.setBottomBorder()
        passwordTextField.setBottomBorder()
        navigationController?.navigationBar.barTintColor = UIColor(named: "DarkGray")
        navigationController?.navigationBar.topItem?.title = ""
        navigationController?.navigationBar.backIndicatorImage = UIImage(systemName: "chevron.left")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(systemName: "chevron.left")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.setNavigationBarHidden(false, animated: animated)
//    }

}

extension UITextField {
  func setBottomBorder() {
    self.borderStyle = .none
    self.layer.backgroundColor = UIColor.white.cgColor
    self.layer.masksToBounds = false
    self.layer.shadowColor = UIColor(red: 0.302, green: 0.3059, blue: 0.3059, alpha: 1.0).cgColor
    self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
    self.layer.shadowOpacity = 1.0
    self.layer.shadowRadius = 0.0
  }
}


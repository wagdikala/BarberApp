//
//  MainPageViewController.swift
//  BarberApp
//
//  Created by Wagdi Kala on 09/06/2020.
//  Copyright © 2020 Wagdi Kala. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

     override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           navigationController?.setNavigationBarHidden(true, animated: animated)
       }

//       override func viewWillDisappear(_ animated: Bool) {
//           super.viewWillDisappear(animated)
//           navigationController?.setNavigationBarHidden(true, animated: animated)
//       }

    @IBAction func backPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

//
//  QeueViewController.swift
//  BarberApp
//
//  Created by Wagdi Kala on 10/06/2020.
//  Copyright © 2020 Wagdi Kala. All rights reserved.
//

import UIKit
import CollectionPickerView


class BookViewController: UIViewController {
    
    
    let dayTable = DayViewController()
    var pickerView = PickerViewController()
    
    let topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bottomView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bottomViewEx: UIView = {
        let view = UIView()
        view.backgroundColor = K.dayBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
       
    }
    
    func initViews() {
        
        topView.addSubview(pickerView.view)
        bottomView.addSubview(dayTable.view)
        bottomViewEx.addSubview(bottomView)
        view.addSubview(topView)
        view.addSubview(bottomViewEx)
        
        pickerView.view.translatesAutoresizingMaskIntoConstraints = false
        dayTable.view.translatesAutoresizingMaskIntoConstraints   = false
        
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive   = true
        topView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 200).isActive           = true
        
        pickerView.view.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive   = true
        pickerView.view.topAnchor.constraint(equalTo: topView.topAnchor).isActive           = true
        pickerView.view.trailingAnchor.constraint(equalTo: topView.trailingAnchor).isActive = true
        pickerView.view.bottomAnchor.constraint(equalTo: topView.bottomAnchor).isActive     = true
        
        bottomViewEx.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
        bottomViewEx.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive     = true
        bottomViewEx.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomViewEx.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
        
        bottomView.leadingAnchor.constraint(equalTo: bottomViewEx.leadingAnchor, constant: 50).isActive   = true
        bottomView.topAnchor.constraint(equalTo: bottomViewEx.topAnchor, constant: 50).isActive     = true
        bottomView.trailingAnchor.constraint(equalTo: bottomViewEx.trailingAnchor, constant: -50).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: bottomViewEx.bottomAnchor, constant: -50).isActive     = true
        
        dayTable.view.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor).isActive   = true
        dayTable.view.topAnchor.constraint(equalTo: bottomView.topAnchor).isActive           = true
        dayTable.view.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor).isActive = true
        dayTable.view.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor).isActive     = true
        
        view.insetsLayoutMarginsFromSafeArea = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}


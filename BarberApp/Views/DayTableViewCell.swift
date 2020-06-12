//
//  DayTableViewCell.swift
//  BarberApp
//
//  Created by Wagdi Kala on 12/06/2020.
//  Copyright © 2020 Wagdi Kala. All rights reserved.
//

import UIKit

class DayTableViewCell: UITableViewCell {
    
    let hour = 10
    let hourLabel = UILabel()
    
    let leftView = UIView()
    
    lazy var maiuView: UIView = {
        let view = UIView()
        view.frame = self.frame
        view.backgroundColor = .cyan
        return view
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(maiuView)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initViews() {
       
        maiuView.translatesAutoresizingMaskIntoConstraints = false
        maiuView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        maiuView.topAnchor.constraint(equalTo: topAnchor, constant: 2.5).isActive = true
        maiuView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        maiuView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2.5).isActive = true
        
        
    }

}

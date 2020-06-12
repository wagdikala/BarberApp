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

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initViews() {
        hourLabel.text = "\(hour):00"
        let halfHourLbael = UILabel()
        halfHourLbael.text = "\(hour):30"
        
        let lineLabel = UILabel()
        lineLabel.backgroundColor = .black
        lineLabel.frame = CGRect(x: 0, y: 0, width: 50, height: 10)
        
        let mainStackView = UIStackView()
        let hoursStackView = UIStackView()
        let linesStackView = UIStackView()
        
        hoursStackView.axis = .vertical
        hoursStackView.distribution = .fillEqually
        hoursStackView.alignment = .fill
        
        hoursStackView.addArrangedSubview(hourLabel)
        hoursStackView.addArrangedSubview(halfHourLbael)
        
        linesStackView.alignment = .center
            
        linesStackView.addArrangedSubview(lineLabel)
        
        mainStackView.distribution = .fill
        mainStackView.alignment = .fill
        
        mainStackView.addArrangedSubview(hoursStackView)
        mainStackView.addArrangedSubview(linesStackView)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(mainStackView)
        contentView.backgroundColor = .yellow
        
        mainStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        mainStackView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        mainStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        mainStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }

}

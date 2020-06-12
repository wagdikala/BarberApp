//
//  DayTableViewCell.swift
//  BarberApp
//
//  Created by Wagdi Kala on 12/06/2020.
//  Copyright © 2020 Wagdi Kala. All rights reserved.
//

import UIKit

class DayTableViewCell: UITableViewCell {
    
    var hour = 1
    
    var hourLabel: UILabel = {
        let label = UILabel()
        label.text = "00:00"
        label.textAlignment = .center
        label.font = K.hourFont
        return label
    }()
    
    var halfHourLabel: UILabel = {
        let label = UILabel()
        label.text = "00:30"
        label.textAlignment = .center
        label.font = K.hourFont
        return label
    }()
          
    
    var leftView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var rightView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var mainView: UIView = {
        let view = UIView()
        return view
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(mainView)
        initViews()
        
    }
    
    override func prepareForReuse() {
        //initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initViews() {
        
       
        
      
        
        let hourLine = LineView()
        hourLine.backgroundColor = .clear
        
        let halfLine = LineView()
        halfLine.backgroundColor = .clear
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40).isActive = true
        mainView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mainView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50).isActive = true
        mainView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        mainView.addSubview(leftView)
        mainView.addSubview(rightView)
        
        leftView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor).isActive = true
        leftView.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        leftView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor).isActive = true
        
        rightView.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 2).isActive = true
        rightView.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        rightView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor).isActive = true
        rightView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor).isActive = true
        
        let leftStack = UIStackView()
        leftStack.alignment = .fill
        leftStack.distribution = .fillEqually
        leftStack.axis = .vertical
        leftStack.translatesAutoresizingMaskIntoConstraints = false
        leftStack.addArrangedSubview(hourLabel)
        leftStack.addArrangedSubview(halfHourLabel)
        leftView.addSubview(leftStack)
        
        let rightStack = UIStackView()
        rightStack.alignment = .fill
        rightStack.distribution = .fillEqually
        rightStack.axis = .vertical
        rightStack.translatesAutoresizingMaskIntoConstraints = false
        rightStack.addArrangedSubview(hourLine)
        rightStack.addArrangedSubview(halfLine)
        rightView.addSubview(rightStack)
        
        leftStack.leadingAnchor.constraint(equalTo: leftView.leadingAnchor).isActive = true
        leftStack.topAnchor.constraint(equalTo: leftView.topAnchor).isActive = true
        leftStack.trailingAnchor.constraint(equalTo: leftView.trailingAnchor).isActive = true
        leftStack.bottomAnchor.constraint(equalTo: leftView.bottomAnchor).isActive = true
        
        rightStack.leadingAnchor.constraint(equalTo: rightView.leadingAnchor).isActive = true
        rightStack.topAnchor.constraint(equalTo: rightView.topAnchor).isActive = true
        rightStack.trailingAnchor.constraint(equalTo: rightView.trailingAnchor).isActive = true
        rightStack.bottomAnchor.constraint(equalTo: rightView.bottomAnchor).isActive = true
        
        
    }

}


class LineView: UIView {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)

        if let context = UIGraphicsGetCurrentContext() {
            context.setStrokeColor(UIColor.gray.cgColor)
            context.setLineWidth(1)
            context.move(to: CGPoint(x: 0, y: bounds.height/2))
            context.addLine(to: CGPoint(x: bounds.width, y: bounds.height/2))
            context.strokePath()
        }
    }
}

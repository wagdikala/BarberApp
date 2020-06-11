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

    let days = ["17", "18", "19", "20", "21", "22", "23"]
    var pickerView = CollectionPickerView()
    let topView = UIView()
//    let font = UIFont(name: "HelveticaNeue-Light", size: 20)!
//    let highlightedFont = UIFont(name: "HelveticaNeue", size: 20)!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        pickerView.collectionView.register(
        CollectionPickerViewCell.self,
        forCellWithReuseIdentifier: NSStringFromClass(CollectionPickerViewCell.self))
        
        initViews()
       
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func initViews() {
        
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        
//        topView.backgroundColor = .green
//        topView.translatesAutoresizingMaskIntoConstraints = false
//        topView.heightAnchor.constraint(equalToConstant: view.frame.height/8).isActive = true
        
        pickerView.heightAnchor.constraint(equalToConstant: view.frame.height/4).isActive = true
        //topView.addSubview(pickerView)
        
        //pickerView.centerYAnchor.constraint(equalTo: topView.centerYAnchor).isActive = true
        
        
        let bottomView = UIView()
        bottomView.backgroundColor = .clear
        
        //Init stackview
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        //view.backgroundColor = .white
        
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = UIStackView.Distribution.fill
        stackView.alignment = UIStackView.Alignment.fill
        stackView.spacing = 5

        //stackView.addArrangedSubview(topView)
        stackView.addArrangedSubview(pickerView)
        stackView.addArrangedSubview(bottomView)
        
        view.insetsLayoutMarginsFromSafeArea = true
     
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
    }

}

extension BookViewController: UICollectionViewDelegate {
    
}

extension BookViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return days.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(CollectionPickerViewCell.self), for: indexPath) as! CollectionPickerViewCell
        
        let title = days[indexPath.item]
        cell.dayLabel.text = title
        cell.monthLabel.text = "א פ ר"

        return cell
    }
}




private class CollectionPickerViewCell: UICollectionViewCell {
    var monthLabel: UILabel!
    var dayLabel: UILabel!
    
    
    func initialize() {
        
        self.layer.isDoubleSided = false
        
        self.dayLabel = UILabel()
        self.dayLabel.backgroundColor = .clear
        self.dayLabel.textAlignment = .center
        self.dayLabel.font = K.dayFont
        self.dayLabel.textColor = .darkGray
        self.dayLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let dayView = UIView()
        dayView.backgroundColor = .clear
        dayView.addSubview(dayLabel)
        
        self.dayLabel.leadingAnchor.constraint(equalTo: dayView.leadingAnchor).isActive = true
        self.dayLabel.trailingAnchor.constraint(equalTo: dayView.trailingAnchor).isActive = true
        self.dayLabel.bottomAnchor.constraint(equalTo: dayView.bottomAnchor).isActive = true
        
        
        
        //self.dayLabel.font = K.mainFont
        
        self.monthLabel = UILabel()
        self.monthLabel.backgroundColor = .clear
        self.monthLabel.textAlignment = .center
        self.monthLabel.font = K.mainFont
        self.monthLabel.textColor = .lightGray
        
        
        
        let stackView = UIStackView(frame: contentView.bounds)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        contentView.addSubview(stackView)
        
        stackView.addArrangedSubview(dayView)
        stackView.addArrangedSubview(monthLabel)
        
        
        //self.label.autoresizingMask = [.flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleRightMargin]
        self.contentView.addSubview(stackView)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
    }
    
}

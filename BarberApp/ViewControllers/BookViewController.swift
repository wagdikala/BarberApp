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

    let titles = ["17 APR", "18 APR", "19 APR", "20 APR", "21 APR", "22 APR", "23 APR"]
    var pickerView = CollectionPickerView()
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
    
    func initViews() {
        
        let topView = UIView()
        topView.backgroundColor = .yellow
        
//        topView.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
//        topView.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
        
        let bottomView = UIView()
        bottomView.backgroundColor = .red
        
        
        //Init stackview
        let stackView = UIStackView(frame: view.bounds)
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = UIStackView.Distribution.fillEqually
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing = 10
        stackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        stackView.addArrangedSubview(topView)
        stackView.addArrangedSubview(bottomView)
        
        
//        topView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
//        topView.topAnchor.constraint(equalTo: stackView.topAnchor).isActive = true
//        topView.heightAnchor.constraint(equalTo: stackView.heightAnchor).isActive = true
//        topView.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
//        topView.translatesAutoresizingMaskIntoConstraints = false
//
//        bottomView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
//        bottomView.topAnchor.constraint(equalTo: stackView.topAnchor).isActive = true
//        bottomView.heightAnchor.constraint(equalTo: stackView.heightAnchor).isActive = true
//        bottomView.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
//        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
       
//        pickerView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
//        pickerView.topAnchor.constraint(equalTo: stackView.topAnchor).isActive = true
//        pickerView.heightAnchor.constraint(equalTo: stackView.heightAnchor).isActive = true
//        pickerView.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true

     
        view.addSubview(stackView)
        view.backgroundColor = .blue
        
//        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        stackView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
//        stackView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
             
        
        
//        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        
    }

}

extension BookViewController: UICollectionViewDelegate {
    
}

extension BookViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(CollectionPickerViewCell.self), for: indexPath) as! CollectionPickerViewCell
        
        let title = titles[indexPath.item]
        cell.label.text = title

        return cell
    }
}




private class CollectionPickerViewCell: UICollectionViewCell {
    var label: UILabel!
    
    
    func initialize() {
//        self.layer.isDoubleSided = false
//        self.layer.shouldRasterize = true
//        self.layer.rasterizationScale = UIScreen.main.scale
        
        
        self.label = UILabel(frame: self.contentView.bounds)
        self.label.backgroundColor = .yellow
//        self.label.autoresizingMask = [.flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleRightMargin]
        self.contentView.addSubview(self.label)
    }
    
    init() {
        super.init(frame: CGRect.zero)
        initialize()
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

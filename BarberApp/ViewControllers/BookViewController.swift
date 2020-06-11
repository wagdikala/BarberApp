//
//  QeueViewController.swift
//  BarberApp
//
//  Created by Wagdi Kala on 10/06/2020.
//  Copyright © 2020 Wagdi Kala. All rights reserved.
//

import UIKit
import CollectionPickerView

extension UIView {
    
    func anchor(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, trailing: NSLayoutXAxisAnchor, padding: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        
        topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        leading.constraint(equalTo: leading, constant: padding.left).isActive = true
        bottom.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        trailing.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        
    }
    
}

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
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        
        let bottomView = UIView()
        bottomView.backgroundColor = .red
        //Init stackview
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        view.backgroundColor = .blue
        
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = UIStackView.Distribution.fill
        stackView.alignment = UIStackView.Alignment.fill
        stackView.spacing = 5

        stackView.addArrangedSubview(topView)
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

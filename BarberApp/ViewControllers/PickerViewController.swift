//
//  PickerViewController.swift
//  BarberApp
//
//  Created by Wagdi Kala on 13/06/2020.
//  Copyright © 2020 Wagdi Kala. All rights reserved.
//
import UIKit
import CollectionPickerView

class PickerViewController: UIViewController {
    
    let pickerView = CollectionPickerView()
    
    let days = ["17", "18", "19", "20", "21", "22", "23"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        
        //pickerView.collectionView.reloadData()
        pickerView.collectionView.register(
            CollectionPickerViewCell.self,
            forCellWithReuseIdentifier: NSStringFromClass(CollectionPickerViewCell.self))
        
        view.addSubview(pickerView)
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        pickerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pickerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        pickerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        pickerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        // Uncomment to have vertical direction
        //pickerView.isHorizontal = false
        
        // Uncomment to remove wheel effect
        //pickerView.isFlat = true
        
        // Uncomment to prevent selection on scroll
        //pickerView.selectCenter = false
        
        // Uncomment to set spacing between cells, default 10
        pickerView.cellSpacing = 10
        
        // Uncomment to set cell size (width for horizontal, height for vertical style), default 100
        pickerView.cellSize = 150
        
        // Uncomment to set wheel effect perspective representation
        //pickerView.viewDepth = 2000
        
        // Uncomment to enable/disable fading gradient mask
        //pickerView.maskDisabled = false
        
        // Current selected index might be obtained from selectedIndex
        //NSLog("\(pickerView.selectedIndex)")
        
        // Reload the picker view
        //pickerView.reloadData()
    }
    
}

extension PickerViewController: UICollectionViewDelegate {
    /*
     
     UIScrollViewDelegate/UICollectionViewDelegate Support
     ----------------------------
     AKPickerViewDelegate inherits UIScroll(Collection)ViewDelegate.
     You can use UIScroll(Collection)ViewDelegate methods
     by simply setting pickerView's delegate.
     
     */
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //NSLog("SCROLL: \(scrollView.contentOffset.x)")
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //let index = indexPath.item
        
    }
}

// MARK: UICollectionViewDataSource
extension PickerViewController: UICollectionViewDataSource {
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(days.count)
        return days.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(CollectionPickerViewCell.self), for: indexPath) as! CollectionPickerViewCell
        let title = "-\(days[indexPath.item])-"
        cell.dayLabel.text = title
        cell.monthLabel.text = "א פ ר"
        return cell
    }
}


private class CollectionPickerViewCell: UICollectionViewCell {
    
    var monthLabel: UILabel = {
        let label = UILabel()
        label.text = "Apr"
        label.font = K.monthFont
        label.textColor = K.monthColor
        label.textAlignment = .center
        return label
    }()
    
    var dayLabel: UILabel = {
        let label = BottomAlignedLabel()
        label.text = "-19-"
        label.font = K.dayFont
        label.textColor = K.dayColor
        label.textAlignment = .center
        return label
    }()
    
    func initialize() {
        self.layer.isDoubleSided = false
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
      
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        
        contentView.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30).isActive = true
        
        stackView.addArrangedSubview(dayLabel)
        stackView.addArrangedSubview(monthLabel)
        
        
    }
    
    init() {
        super.init(frame: CGRect.zero)
        self.initialize()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    required init!(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
}

//
//  BookViewController.swift
//  BarberApp
//
//  Created by Wagdi Kala on 10/06/2020.
//  Copyright © 2020 Wagdi Kala. All rights reserved.
//

import UIKit
import CollectionPickerView

class BookViewController: UIViewController {

    let titles = ["17 APR", "18 APR", "19 APR", "20 APR", "21 APR", "22 APR", "23 APR"]
    
//    let font = UIFont(name: "HelveticaNeue-Light", size: 20)!
//    let highlightedFont = UIFont(name: "HelveticaNeue", size: 20)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController Presented")
        let pickerView = CollectionPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        pickerView.collectionView.reloadData()
        
        pickerView.collectionView.register(
        CollectionPickerViewCell.self,
        forCellWithReuseIdentifier: NSStringFromClass(CollectionPickerViewCell.self))
            
        view.addSubview(pickerView)

        pickerView.translatesAutoresizingMaskIntoConstraints = false
        pickerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pickerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        pickerView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        pickerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true

        // Do any additional setup after loading the view.
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
    var label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

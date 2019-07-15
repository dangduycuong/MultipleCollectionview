//
//  ViewController.swift
//  MultipleCollectionview.
//
//  Created by Cuong on 7/15/19.
//  Copyright © 2019 Cuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var placesCollectionView: UICollectionView!
    
    @IBOutlet weak var carsCollectionView: UICollectionView!
    
    var places = ["place1", "place2", "place3", "place4", "place5"]
    
    var cars = ["car1", "car2", "car3", "car4", "car5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placesCollectionView.delegate = self
        placesCollectionView.dataSource = self
        
        carsCollectionView.delegate = self
        carsCollectionView.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return places.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.placesCollectionView {
            let cell: PlacesCollectionViewCell = placesCollectionView.dequeueReusableCell(withReuseIdentifier: "placesCell", for: indexPath) as! PlacesCollectionViewCell
            cell.placesImageView.image = UIImage(named: "\(places[indexPath.row])")
            
            return cell
        } else {
            let cell: CarsCollectionViewCell = carsCollectionView.dequeueReusableCell(withReuseIdentifier: "carsCell", for: indexPath) as! CarsCollectionViewCell
            cell.carsImageView.image = UIImage(named: "\(cars[indexPath.row])")
            
            return cell
        }
    }
    
}


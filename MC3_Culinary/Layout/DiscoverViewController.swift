//
//  DiscoverViewController.swift
//  MC3_Culinary
//
//  Created by Leonnardo Benjamin Hutama on 20/08/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import UIKit

class DiscoverViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    private var provinceData: [ProvinceModel] = [provinceBanten, provinceJakarta, provinceJawaBarat]
    private var cityData : [CityModel] = []
    private var foodData : [TraditionalFoodModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createData()
        if let layout = collectionView.collectionViewLayout as? PinterestLayout {
            layout.delegate = self
        }
        
        setupCollectionView()
        
    }
    
    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "HomeCell", bundle: nil), forCellWithReuseIdentifier: "HomeCell")
    }

    
    
    func createData()
    {
        for i in 0...provinceData.count-1{
            for j in 0...provinceData[i].cities.count-1{
                cityData.append(provinceData[i].cities[j])
            }
        }
        
        for i in 0...cityData.count-1{
            for j in 0...cityData[i].foods.count-1{
                foodData.append(cityData[i].foods[j])
            }
        }
        
        foodData.shuffle()
        
    }

    
}

extension DiscoverViewController: PinterestLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        let food = foodData[indexPath.row]
        let image = UIImage(named: food.images![0])
        var height = image!.size.height

        height = CGFloat.random(in: 200...300)
        
        return height
    }
}

extension DiscoverViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCell
        
        cell.model = foodData[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let foodDetail:PageDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageDetailViewController") as! PageDetailViewController
        
        foodDetail.model = foodData[indexPath.row]
        
        self.navigationController?.pushViewController(foodDetail, animated: true)
    }
}

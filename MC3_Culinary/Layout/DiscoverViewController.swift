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
    
    var selectedCity = ""
    var filteredFood: [TraditionalFoodModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedCity)

        setupTitle()

        createData()
        filteredFood = foodData.filter({$0.origin?.name == selectedCity})
        if let layout = collectionView.collectionViewLayout as? PinterestLayout {
            layout.delegate = self
        }

        
        setupCollectionView()
        collectionView.reloadData()
    }

    private func setupTitle(){
        if selectedCity.count > 0 {
            self.title = selectedCity
            self.navigationItem.rightBarButtonItem?.isEnabled = false
        }
    }
    
    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "HomeCell", bundle: nil), forCellWithReuseIdentifier: "HomeCell")
    }

    
    
    func createData()
    {
//        for i in 0...provinceData.count-1{
//            for j in 0...provinceData[i].cities.count-1{
//                cityData.append(provinceData[i].cities[j])
//            }
//        }
//
//        for i in 0...cityData.count-1{
//            for j in 0...cityData[i].foods.count-1{
//                foodData.append(cityData[i].foods[j])
//            }
//        }
        
        for i in 0...allFoods.count-1{
            for j in 0...allFoods[i].count-1{
                foodData.append(allFoods[i].self[j])
            }
        }
        
        foodData.shuffle()
        
    }

    
}

extension DiscoverViewController: PinterestLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        let food = foodData[indexPath.row]
        let image = UIImage(named: food.images![0])
        let randomHeight = CGFloat.random(in: 200...300)
        var height = image!.size.height

        if (height > randomHeight){
            height = randomHeight
        } else {
            height += height / 10
        }
        
        return height
    }
}

extension DiscoverViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if selectedCity != ""{
            return filteredFood!.count
        }
        return foodData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCell
        
        
        if selectedCity == ""{
            cell.model = foodData[indexPath.row]
        }else{
            
            cell.model = filteredFood![indexPath.row]
        }

        cell.layoutIfNeeded()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let currentCell = collectionView.cellForItem(at: indexPath) as! HomeCell
        
        let foodDetail:PageDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageDetailViewController") as! PageDetailViewController
        
        if selectedCity == "" {  
            foodDetail.model = foodData[indexPath.row]
        }
        else{
            for i in 0...filteredFood!.count-1 {
                if currentCell.title.text == filteredFood![i].name! {
                    foodDetail.model = filteredFood![i]
                }
            }
        }
        
        self.navigationController?.pushViewController(foodDetail, animated: true)
    }
}

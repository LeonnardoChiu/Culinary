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
    private var data: [TraditionalFoodModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = collectionView.collectionViewLayout as? PinterestLayout {
            layout.delegate = self
        }
        
        setupCollectionView()
        data = createData()
    }
    
    private func setupCollectionView() {
//        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "HomeCell", bundle: nil), forCellWithReuseIdentifier: "HomeCell")
    }
    
    private func createData() -> [TraditionalFoodModel] {
        var data: [TraditionalFoodModel] = []
        
        data.append(TraditionalFoodModel(name: "Pancake", image: "placeholder", funFact: "Hello", Ingredient: "Bra", method: "Tst"))
        data.append(TraditionalFoodModel(name: "Ayam Pong", image: "makanan1", funFact: "hah", Ingredient: "lho", method: "hey"))
        data.append(TraditionalFoodModel(name: "Nasi Lemak", image: "makanan2", funFact: "lah", Ingredient: "bis", method: "kecil"))
        data.append(TraditionalFoodModel(name: "Ayam Banten", image: "makanan3", funFact: "wuss", Ingredient: "der", method: "dum"))
        data.append(TraditionalFoodModel(name: "Ayam Surabaya", image: "makanan4", funFact: "ghost", Ingredient: "aleale", method: "botol"))
        
        return data
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension DiscoverViewController: PinterestLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        let food = data![indexPath.row]
        let image = UIImage(named: food.image!)
        let height = image!.size.height
        
        var finalHeight: CGFloat = 0.0

       
       if height > 1000 {
            finalHeight = height / 15
        }
       else {
        finalHeight = 300
        }
        
        return finalHeight
        
        
//        return height/10
    }
}

extension DiscoverViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCell
        
        cell.model = data![indexPath.row]
        return cell
    }
}

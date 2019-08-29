//
//  SearchViewController.swift
//  MC3_Culinary
//
//  Created by Leonnardo Benjamin Hutama on 20/08/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    private var provinceData: [ProvinceModel] = [provinceBanten, provinceJakarta, provinceJawaBarat]
    private var cityData = allCities
    private var foodData : [TraditionalFoodModel] = []
    
    var searchFoodList = [String]()
    var searchLocationList = [String]()
    var searchLocationFilter = [String]()
    var searchFoodFilter = [String]()
    var isSearching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createData()

        self.hideKeyboardWhenTappedAround()
        
        // Do any additional setup after loading the view.
    }
    
    func createData() {
        for i in 0...allFoods.count-1{
            for j in 0...allFoods[i].count-1{
                foodData.append(allFoods[i].self[j])
               
            }
        }
        
        for i in 0...foodData.count-1{
            searchFoodList.append(foodData[i].name!)
        }
        
        for i in 0...cityData.count-1{
            searchLocationList.append(cityData[i].name!)
        }
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

extension SearchViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Location"
        }
        else{
            return "Food"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            if isSearching {
                return searchLocationFilter.count
            }
            else{
                return searchLocationList.count
            }
        }
        else{
            if isSearching {
                return searchFoodFilter.count
            }
            else{
                return searchFoodList.count
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.section == 0{
            if isSearching {
                cell.textLabel?.text = searchLocationFilter[indexPath.row]
            }
            else{
                cell.textLabel?.text = searchLocationList[indexPath.row]
            }
        }
        else{
            if isSearching {
                cell.textLabel?.text = searchFoodFilter[indexPath.row]
            }
            else{
                cell.textLabel?.text = searchFoodList[indexPath.row]
            }
        }
        return cell
    }
}

extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("LAGI SEARCHHHHH")
        searchLocationFilter = searchLocationList.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searchFoodFilter = searchFoodList.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        isSearching = true
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isSearching = false
        searchBar.text = ""
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let currentCell = tableView.cellForRow(at: indexPath) as! UITableViewCell

        if indexPath.section == 0 {
            print("LOCATION SELECTED")
            let foodDiscover:DiscoverViewController = self.storyboard?.instantiateViewController(withIdentifier: "DiscoverViewController") as! DiscoverViewController
            
            foodDiscover.selectedCity = currentCell.textLabel!.text!
            
//            else{
//
//                for i in 0...foodData.count-1{
//
//                    if currentCell.textLabel!.text == foodData[i].name! {
//                        foodDetail.model = foodData[i]
//                    }
//                }
//            }
            
            self.navigationController?.pushViewController(foodDiscover, animated: true)
        }
        else {
            print("Food SELECTERD")
            let foodDetail:PageDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageDetailViewController") as! PageDetailViewController
            
            if isSearching == false {
                foodDetail.model = foodData[indexPath.row]
            }
            else{
                
                for i in 0...foodData.count-1{
                    
                    if currentCell.textLabel!.text == foodData[i].name! {
                        foodDetail.model = foodData[i]
                    }
                }
            }
            
            self.navigationController?.pushViewController(foodDetail, animated: true)
        }
        
//        for i in 0...provinceData.count-1 {
//            if currentCell.textLabel!.text == provinceData[i].name! {
//                isLocationName = true
//                break
//            }
//            else{
//                isFoodName = true
//            }
//        }
        
//        if numberOfSections(in: tableView) == 0 {
//        }
        
    }
    
}

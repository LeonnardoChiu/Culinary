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
    private var cityData : [CityModel] = []
    private var foodData : [TraditionalFoodModel] = []
    
    var locationList = ["Sumatera", "Jawa", "Kaimantan", "Sulawesi", "Papua", "Sumatera", "Jawa", "Kaimantan", "Sulawesi", "Papua", "Sumatera", "Jawa", "Kaimantan", "Sulawesi", "Papua", "Sumatera", "Jawa", "Kaimantan", "Sulawesi", "Papua", "Sumatera", "Jawa", "Kaimantan", "Sulawesi", "Papua", "Sumatera", "Jawa", "Kaimantan", "Sulawesi", "Papua", "Sulawesi", "Papua", "Sumatera", "Jawa", "Kaimantan", "Sulawesi", "Papua", "Sumatera", "Jawa", "Kaimantan", "Sulawesi", "Papua", "Sumatera", "Jawa", "Kaimantan", "Sulawesi", "Papua"]
    var searchList = [String]()
    var searchLocation = [String]()
    var isSearching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createData()

        // Do any additional setup after loading the view.
    }
    
    func createData() {
        for i in 0...provinceData.count-1{
            for j in 0...provinceData[i].cities.count-1{
                cityData.append(provinceData[i].cities[j])
            }
        }
        
        for i in 0...cityData.count-1{
            for j in 0...cityData[i].foods.count-1{
                foodData.append(cityData[i].foods[j])
                searchList.append(cityData[i].foods[j].name!)
            }
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isSearching {
            return searchLocation.count
        }
        else{
            return searchList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if isSearching {
            cell?.textLabel?.text = searchLocation[indexPath.row]
        }
        else{
            cell?.textLabel?.text = searchList[indexPath.row]
        }
        return cell!
    }
}

extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("LAGI SEARCHHHHH")
        searchLocation = searchList.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        isSearching = true
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isSearching = false
        searchBar.text = ""
        tableView.reloadData()
    }
    
}

//
//  BookmarkViewController.swift
//  MC3_Culinary
//
//  Created by Leonnardo Benjamin Hutama on 20/08/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import UIKit

class BookmarkViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var foodData: [TraditionalFoodModel] = []
    var bookmarkFoodData: [TraditionalFoodModel] = []
    var bookmarkListName: [String] = []
    var foodModelIndex = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookmarkFoodData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookmarkCell", for: indexPath)
        
        let cellImg : UIImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        cellImg.image = UIImage(named: bookmarkFoodData[indexPath.item].images![0])
        cell.addSubview(cellImg)
//        cell.imageView?.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//        cell.imageView?.image = UIImage(
//        cell.imageView?.image = UIImage(named: bookmarkFoodData[indexPath.item].images![0])
        cell.textLabel?.text = bookmarkFoodData[indexPath.item].name
        cell.detailTextLabel?.text = bookmarkFoodData[indexPath.item].origin?.name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let moveObjTemp = bookmarkFoodData[sourceIndexPath.item]
        bookmarkFoodData.remove(at: sourceIndexPath.item)
        bookmarkFoodData.insert(moveObjTemp, at: destinationIndexPath.item)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
           // UserDefaults.standard.removeObject(forKey: "bookmarklist")
            if var bookmarklist = UserDefaults.standard.array(forKey: "bookmarklist"){
                bookmarklist.remove(at: indexPath.row)
                print("deleted row")
                UserDefaults.standard.setValue(bookmarklist, forKey: "bookmarklist")
            }
            
            print(bookmarkFoodData[indexPath.row].name!)
            print(UserDefaults.standard.array(forKey: "bookmarklist")?.count)
            bookmarkFoodData.remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let foodDetail:PageDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageDetailViewController") as! PageDetailViewController
        
//        if isSearching == false {
            foodDetail.model = bookmarkFoodData[indexPath.row]
//        }
//        else{
//
//            for i in 0...bookmarkFoodData.count-1{
//
//                if currentCell.textLabel!.text == bookmarkFoodData[i].name! {
//                    foodDetail.model = bookmarkFoodData[i]
//                }
//            }
//        }
    
        self.navigationController?.pushViewController(foodDetail, animated: true)
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.array(forKey: "bookmarklist") == nil{
            bookmarkListName = []
        }else{
            bookmarkListName = UserDefaults.standard.array(forKey: "bookmarklist") as! [String]
            searchModel()
        }
        
        navigationController?.navigationBar.prefersLargeTitles = true
        // Do any additional setup after loading the view.
        
        tableView.reloadData()
    }
    

    override func viewDidAppear(_ animated: Bool) {
        
//        if UserDefaults.standard.array(forKey: "bookmarklist") == nil{
//            bookmarkListName = []
//        }else {
            bookmarkListName = UserDefaults.standard.array(forKey: "bookmarklist") as! [String]
            if bookmarkListName.count != bookmarkFoodData.count{
                if bookmarkListName.count > bookmarkFoodData.count {
                    for i in bookmarkFoodData.count...bookmarkListName.count-1{
                        for j in 0...foodData.count-1{
                            if foodData[j].name == bookmarkListName[i]
                            {
                                bookmarkFoodData.append(foodData[j])
                            }
                        }
                    }
                } 
                else{
                    for (idx,data) in bookmarkFoodData.enumerated(){
                        if !bookmarkListName.contains(data.name!){
                            bookmarkFoodData.remove(at: idx)
                        }
                    }
                }
            }
//        }
        
        tableView.reloadData()
    }
    
    func searchModel(){
        
        for i in 0...allFoods.count-1{
            for j in 0...allFoods[i].count-1{
                foodData.append(allFoods[i].self[j])
            }
        }
        
        if bookmarkListName.count > 0{
            
            print(bookmarkListName.count)
            
            for i in 0...bookmarkListName.count-1{
                for j in 0...foodData.count-1{
                    if foodData[j].name == bookmarkListName[i]
                    {
                        bookmarkFoodData.append(foodData[j])
                    }
                }
            }
        }
    }
    
    func appendBookmark(){
        
    }
    

    

    
    
    
    
    @IBAction func btnEditClicked(_ sender: UIBarButtonItem) {
        self.tableView.isEditing = !self.tableView.isEditing
        sender.title = (self.tableView.isEditing) ? "Done" : "Edit"
        
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

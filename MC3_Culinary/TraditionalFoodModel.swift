//
//  TraditionalFoodModel.swift
//  MC3_Culinary
//
//  Created by Randy Noel on 20/08/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import Foundation


class TraditionalFoodModel{
    var name: String?
    var origin: CityModel?
    var images: [String]?
    var funFact: String?
    var Ingredient: String?
    var method: String?
    
    
    init(name : String, images: [String], fact: String, ingredient: String, method: String, origin: CityModel) {
        self.name = name
        self.images = images
        self.funFact = fact
        self.Ingredient = ingredient
        self.method = method
        self.origin = origin
        
    }
}

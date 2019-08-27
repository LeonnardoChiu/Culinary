//
//  CityModel.swift
//  MC3_Culinary
//
//  Created by Randy Noel on 20/08/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import Foundation

class CityModel{
    var name : String?
    var foods : [TraditionalFoodModel]?
    var province : ProvinceModel
    
    init(name : String, province : ProvinceModel) {
        self.name = name
        self.province = province
    }
}

//
//  ProvinceModel.swift
//  MC3_Culinary
//
//  Created by Randy Noel on 20/08/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import Foundation
import UIKit

class ProvinceModel{
    var name : String?
    var locationImage : String?
    var cities : [CityModel]
    
    init(name : String, image: String, cities:[CityModel]) {
        self.name = name
        self.locationImage = image
        self.cities = cities
    }
}

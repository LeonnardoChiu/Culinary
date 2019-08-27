//
//  HomeCell.swift
//  MC3_Culinary
//
//  Created by M.Syarif Hidayat on 21/08/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var place: UILabel!
    var model: TraditionalFoodModel? {
        didSet {
            self.setupView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    private func setupView() {
        guard let model = model else { return }
        
        title.text = model.name
        imageView.image = UIImage(named: model.images![0] ?? "placeholder")
        imageView.layer.cornerRadius = 8
        
        place.text = model.origin?.name
    }
}

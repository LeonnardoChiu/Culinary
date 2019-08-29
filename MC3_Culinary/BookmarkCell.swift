//
//  BookmarkCell.swift
//  MC3_Culinary
//
//  Created by M.Syarif Hidayat on 29/08/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import UIKit

class BookmarkCell: UITableViewCell {

    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var subheadLb: UILabel!
    @IBOutlet weak var imgBookmark: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

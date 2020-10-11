//
//  MainCollectionViewCell.swift
//  stockPresent
//
//  Created by Артем Василенко on 11.10.2020.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageMainCell: UIImageView!
    @IBOutlet weak var labelMainCell: UILabel!
 
    var stockItems: CollectionViewModel? {
        didSet {
            labelMainCell.text = stockItems?.text
            
            if let image = stockItems?.image {
                imageMainCell.image = UIImage(named: image)
            }
        }
    }
}

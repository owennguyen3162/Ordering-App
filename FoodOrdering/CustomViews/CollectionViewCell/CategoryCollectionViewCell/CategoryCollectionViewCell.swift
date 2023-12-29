//
//  CategoryCollectionViewCell.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 27/12/2023.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryLable: UILabel!
    @IBOutlet weak var categoryImageView: UIImageView!
    
    static let Identifier = String(describing: CategoryCollectionViewCell.self)
    static func nib() -> UINib{
        return UINib(nibName: Identifier, bundle: nil)
    }

    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup (category: DishCategory) {
        categoryLable.text = category.name
        categoryImageView.kf.setImage(with: category.image.asUrl)
    }
}

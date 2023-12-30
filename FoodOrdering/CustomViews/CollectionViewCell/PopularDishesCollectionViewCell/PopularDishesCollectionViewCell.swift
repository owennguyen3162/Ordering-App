//
//  PopularDishesCollectionViewCell.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 30/12/2023.
//

import UIKit
import Kingfisher

class PopularDishesCollectionViewCell: UICollectionViewCell {

    @IBOutlet var dishTitle: UILabel!
    @IBOutlet var dishImage: UIImageView!
    @IBOutlet var dishCalories: UILabel!
    @IBOutlet var dishDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static let identifier = String(describing: PopularDishesCollectionViewCell.self)
   
    static func nib () -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func setup (dish: Dish){
        dishTitle.text = dish.name
        dishCalories.text = dish.formattedCalories
        dishDescription.text = dish.description
        dishImage.kf.setImage(with: dish.image?.asUrl)
    }

}

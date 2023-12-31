//
//  DishListTableViewCell.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 31/12/2023.
//

import UIKit

class DishListTableViewCell: UITableViewCell {

    @IBOutlet var dishImage: UIImageView!
    @IBOutlet var dishTitle: UILabel!
    @IBOutlet var dishDescription: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup (dish: Dish) {
        dishImage.kf.setImage(with: dish.image?.asUrl)
        dishTitle.text = dish.name
        dishDescription.text = dish.description
    }
    
    static let identifier = String(describing: DishListTableViewCell.self)
    static func nib () -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
}

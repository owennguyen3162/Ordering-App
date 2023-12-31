//
//  DishDetailViewController.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 31/12/2023.
//

import UIKit

class DishDetailViewController: UIViewController {

//    var completion: ((Dish) -> Void)?
    var dish: Dish!
    @IBOutlet var dishImage: UIImageView!
    @IBOutlet var dishTitle: UILabel!
    @IBOutlet var dishCalories: UILabel!
    @IBOutlet var dishDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData()
        // Do any additional setup after loading the view.
    }
    

    private func fillData (){
        dishImage.kf.setImage(with: dish.image?.asUrl)
        dishTitle.text = dish.name
        dishCalories.text = dish.formattedCalories
        dishDescription.text = dish.description
    }

}

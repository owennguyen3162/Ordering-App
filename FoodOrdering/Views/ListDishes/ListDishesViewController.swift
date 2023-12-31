//
//  ListDishesViewController.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 31/12/2023.
//

import UIKit

class ListDishesViewController: UIViewController {

    @IBOutlet var listDishesTableView: UITableView!
    var dish: DishCategory!
    
    let dishes: [Dish] = [.init(id: "0", image: "https://img.freepik.com/premium-photo/seafood-cuisine-dish-food-plate-top-view-isolated-white-background_9493-20034.jpg", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           .init(id: "1", image: "https://c4.wallpaperflare.com/wallpaper/757/476/907/food-burgers-burger-white-background-wallpaper-preview.jpg", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           .init(id: "2", image: "https://media.istockphoto.com/id/1322628932/photo/poke-bowl-with-salmon-avocado-quinoa-and-cucumber.jpg?s=612x612&w=0&k=20&c=dxyEXDzNYYjmKfNzi6QegEJQTbE-1jZZB4HtQKQABhs=", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           .init(id: "3", image: "https://img.freepik.com/premium-photo/restaurant-menu-dish-traditional-restaurant-serving-appetizer-white-background-isolated-top-view_96064-1033.jpg", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           
                         ]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        registerell()
        self.title = dish.name
    }
    
    private func registerell () {
        listDishesTableView.register(DishListTableViewCell.nib(), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListDishesViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as! DishListTableViewCell
        
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
}


extension ListDishesViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DishDetailViewController.instantiate()
        vc.dish = dishes[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

//
//  HomeViewController.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 27/12/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var CategorycollectionView: UICollectionView!
    @IBOutlet var PopularDishesCollectionView: UICollectionView!
    @IBOutlet var ChefScpcialsCollectionView: UICollectionView!
    
    
    var categoris: [DishCategory] = [.init(id: "1", name: "Africa Dish", image: "https://img.freepik.com/free-vector/isolated-delicious-hamburger-cartoon_1308-134032.jpg"),
                                     .init(id: "1", name: "Africa Dish", image: "https://domf5oio6qrcr.cloudfront.net/medialibrary/3440/conversions/w0714a16207251033667-thumb.jpg"),
                                     .init(id: "1", name: "Africa Dish", image: "https://media.istockphoto.com/id/1348318884/photo/plate-of-mexican-food-tacos.jpg?s=612x612&w=0&k=20&c=Vt8vi4-sCaum6YrzAiAkH7lUJK5mtp2zYT3uYw1M7iA="),
                                     .init(id: "1", name: "Africa Dish", image: "https://media.istockphoto.com/id/1161951083/photo/organic-food-background.jpg?s=612x612&w=0&k=20&c=Wj8Iuip_uJWKXBb4p4HoRXtWjtwDI5piAR4-Q8vswqQ="),
                                     .init(id: "1", name: "Africa Dish", image: "https://media.istockphoto.com/id/1322628932/photo/poke-bowl-with-salmon-avocado-quinoa-and-cucumber.jpg?s=612x612&w=0&k=20&c=dxyEXDzNYYjmKfNzi6QegEJQTbE-1jZZB4HtQKQABhs=")]
    
    var populars: [Dish] = [.init(id: "0", image: "https://img.freepik.com/premium-photo/seafood-cuisine-dish-food-plate-top-view-isolated-white-background_9493-20034.jpg", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           .init(id: "1", image: "https://c4.wallpaperflare.com/wallpaper/757/476/907/food-burgers-burger-white-background-wallpaper-preview.jpg", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           .init(id: "2", image: "https://media.istockphoto.com/id/1322628932/photo/poke-bowl-with-salmon-avocado-quinoa-and-cucumber.jpg?s=612x612&w=0&k=20&c=dxyEXDzNYYjmKfNzi6QegEJQTbE-1jZZB4HtQKQABhs=", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           .init(id: "3", image: "https://img.freepik.com/premium-photo/restaurant-menu-dish-traditional-restaurant-serving-appetizer-white-background-isolated-top-view_96064-1033.jpg", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           
                         ]
    
    var specials: [Dish] = [.init(id: "0", image: "https://img.freepik.com/premium-photo/seafood-cuisine-dish-food-plate-top-view-isolated-white-background_9493-20034.jpg", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           .init(id: "1", image: "https://c4.wallpaperflare.com/wallpaper/757/476/907/food-burgers-burger-white-background-wallpaper-preview.jpg", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           .init(id: "2", image: "https://media.istockphoto.com/id/1322628932/photo/poke-bowl-with-salmon-avocado-quinoa-and-cucumber.jpg?s=612x612&w=0&k=20&c=dxyEXDzNYYjmKfNzi6QegEJQTbE-1jZZB4HtQKQABhs=", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           .init(id: "3", image: "https://img.freepik.com/premium-photo/restaurant-menu-dish-traditional-restaurant-serving-appetizer-white-background-isolated-top-view_96064-1033.jpg", name: "Africa Dish", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", calories: 123.5),
                           
                         ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        // Do any additional setup after loading the view.
    }
    
    private func registerCell() {
        CategorycollectionView.register(CategoryCollectionViewCell.nib(), forCellWithReuseIdentifier: CategoryCollectionViewCell.Identifier)
        
        PopularDishesCollectionView.register(PopularDishesCollectionViewCell.nib(), forCellWithReuseIdentifier: PopularDishesCollectionViewCell.identifier)
        
          ChefScpcialsCollectionView.register(DishLandscapeCollectionViewCell.nib(), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
        
    }
}

extension HomeViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        if collectionView == CategorycollectionView {
            let vc = ListDishesViewController.instantiate()
            vc.dish = categoris[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        } else {
            let controller = DishDetailViewController.instantiate()
            controller.dish = collectionView == PopularDishesCollectionView ?
            populars[indexPath.row] : specials[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }
      
    }
}

extension HomeViewController: UICollectionViewDataSource{
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
            case CategorycollectionView:
                return categoris.count
            case PopularDishesCollectionView:
                return populars.count
            case ChefScpcialsCollectionView:
                return specials.count
            default :
                return 0
        }
       
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case CategorycollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.Identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categoris[indexPath.row])
            return cell
            
        case PopularDishesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularDishesCollectionViewCell.identifier, for: indexPath) as! PopularDishesCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            return cell
        case ChefScpcialsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setup(dish: specials[indexPath.row])
            return cell
        default :
            return UICollectionViewCell()
            
        }
    }
}

//extension HomeViewController: UICollectionViewDelegateFlowLayout{
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if collectionView == CategorycollectionView {
//            return CGSize(width: (collectionView.frame.width) / 2.5, height: ((collectionView.frame.height) / 2) - 7)
//        }
//        return CGSize(width: (collectionView.frame.width), height: ((collectionView.frame.height)))
//    }
//}


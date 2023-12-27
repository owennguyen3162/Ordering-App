//
//  HomeViewController.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 27/12/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    var categoris: [DishCategory] = [.init(id: "1", name: "Africa Dish", image: "https://picsum.photos./100/200"),
                                     .init(id: "1", name: "Africa Dish", image: "https://picsum.photos./100/200"),
                                     .init(id: "1", name: "Africa Dish", image: "https://picsum.photos./100/200"),
                                     .init(id: "1", name: "Africa Dish", image: "https://picsum.photos./100/200"),
                                     .init(id: "1", name: "Africa Dish", image: "https://picsum.photos./100/200")]
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        // Do any additional setup after loading the view.
    }
    
    private func registerCell() {
        collectionView.register(CategoryCollectionViewCell.nib(), forCellWithReuseIdentifier: CategoryCollectionViewCell.Identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate{
    
}

extension HomeViewController: UICollectionViewDataSource{
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoris.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.Identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(category: categoris[indexPath.row])
        return cell
    }
    
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout{
    
}


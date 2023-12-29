//
//  HomeViewController.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 27/12/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    var categoris: [DishCategory] = [.init(id: "1", name: "Africa Dish", image: "https://img.freepik.com/free-vector/isolated-delicious-hamburger-cartoon_1308-134032.jpg"),
                                     .init(id: "1", name: "Africa Dish", image: "https://img.freepik.com/free-vector/isolated-delicious-hamburger-cartoon_1308-134032.jpg"),
                                     .init(id: "1", name: "Africa Dish", image: "https://img.freepik.com/free-vector/isolated-delicious-hamburger-cartoon_1308-134032.jpg"),
                                     .init(id: "1", name: "Africa Dish", image: "https://img.freepik.com/free-vector/isolated-delicious-hamburger-cartoon_1308-134032.jpg"),
                                     .init(id: "1", name: "Africa Dish", image: "https://img.freepik.com/free-vector/isolated-delicious-hamburger-cartoon_1308-134032.jpg")]
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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width) / 2.5, height: ((collectionView.frame.height) / 2) - 7)
    }
}


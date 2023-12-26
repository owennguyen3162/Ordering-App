//
//  OnboardingCollectionViewCell.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 26/12/2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    @IBOutlet var slideImage: UIImageView!
    @IBOutlet var slideTitle: UILabel!
    @IBOutlet var slideDescription: UILabel!
    
    func setupSlide(_ slide: OnboardingSlide){
        self.slideImage.image = slide.image
        self.slideTitle.text = slide.title
        self.slideDescription.text = slide.description
    } 
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
}

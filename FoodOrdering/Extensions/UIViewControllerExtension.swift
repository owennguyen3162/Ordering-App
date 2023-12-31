//
//  UIViewControllerExtension.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 31/12/2023.
//

import UIKit

extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboarch = UIStoryboard(name: "Main", bundle: nil)
        return storyboarch.instantiateViewController(withIdentifier: identifier) as! Self
    }
    
}

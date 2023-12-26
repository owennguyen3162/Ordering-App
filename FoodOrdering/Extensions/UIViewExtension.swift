//
//  UIViewExtension.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 26/12/2023.
//

import UIKit

extension UIView{
    @IBInspectable var cornerRadius: CGFloat {
        get{
            return self.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}

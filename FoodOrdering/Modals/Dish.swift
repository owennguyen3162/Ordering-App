//
//  Dish.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 30/12/2023.
//

import Foundation

struct Dish {
    let id, image, name, description: String?
    let calories: Double?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}

//
//  StringExtension.swift
//  FoodOrdering
//
//  Created by nguyenanhtuan on 27/12/2023.
//

import UIKit

extension String {
    var asUrl: URL? {
        return URL(string: self )
    }
}

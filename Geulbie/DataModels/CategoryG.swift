//
//  CategoryG.swift
//  Geulbie
//
//  Created by Shin on 2020/08/03.
//  Copyright © 2020 DINO. All rights reserved.
//

class CategoryG {
    static let KEY: String = "category"
    static let CATEGORY_NAME_KEY = "categoryName"
    
    var categoryName: String = "미분류"
    
    init(_ categoryName: String) {
        self.categoryName = categoryName
    }
}

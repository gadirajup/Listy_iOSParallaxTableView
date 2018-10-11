//
//  Item.swift
//  Listy
//
//  Created by Prudhvi Gadiraju on 10/10/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import Foundation

struct Item {
    private(set) public var itemImageName: String
    private(set) public var itemLabel: String
    
    init(itemImageName: String, itemLabel: String) {
        self.itemImageName = itemImageName
        self.itemLabel = itemLabel
    }
}

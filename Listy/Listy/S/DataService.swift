//
//  DataService.swift
//  Listy
//
//  Created by Prudhvi Gadiraju on 10/10/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import Foundation

struct DataService {
    static var instance = DataService()
    
    private(set) public var list = [
        Item(itemImageName: "water", itemLabel: "WATER"),
        Item(itemImageName: "trees", itemLabel: "TREES"),
        Item(itemImageName: "flowers", itemLabel: "FLOWERS"),
        Item(itemImageName: "forest", itemLabel: "FOREST"),
        Item(itemImageName: "building", itemLabel: "BUILDING"),
        Item(itemImageName: "sky", itemLabel: "SKY")
    ]
    
    func getList() -> [Item] {
        return list
    }
}

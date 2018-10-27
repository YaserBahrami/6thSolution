//
//  DetailViewModel.swift
//  6thSolution
//
//  Created by yaser on 10/27/18.
//  Copyright © 2018 Barsam. All rights reserved.
//

import Foundation
import RxSwift

class DetailViewModel{
    let items = Variable<[ItemModel]>([])
    
    init(){
        loadItems()
    }
    
    func loadItems(){
        let items = [ItemModel(title: "Item1", text: "This is some test text for item1"),
                     ItemModel(title: "Item2", text: "This is some test text for item2"),
                     ItemModel(title: "Item3", text: "This is some test text for item3"),
                     ItemModel(title: "Item4", text: "This is some test text for item4"),
                     ItemModel(title: "Item5", text: "This is some test text for item5"),
                     ItemModel(title: "Item6", text: "This is some test text for item6"),
                     ItemModel(title: "Item7", text: "This is some test text for item7"),
                     ItemModel(title: "Item8", text: "This is some test text for item8"),
                     ItemModel(title: "Item9", text: "This is some test text for item9"),
                     ItemModel(title: "Item10", text: "This is some test text for item10"),
                     ]
        self.items.value = items
    }
}

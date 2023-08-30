//
//  FoodCardViewModel.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 26/08/23.
//

import UIKit

class FoodCardViewModel {
    
    private var listFood: [Food]
    
    init(listFood: [Food]) {
        self.listFood = listFood
    }
    
    public var numberOfItems: Int {
        listFood.count
    }
    
    public func loadCurrentFoods(indexPath: IndexPath) -> Food {
        listFood[indexPath.row]
    }
}

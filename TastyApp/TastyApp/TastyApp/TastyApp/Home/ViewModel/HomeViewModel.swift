//
//  HomeViewModel.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 26/08/23.
//

import UIKit

class HomeViewModel {
    
    private var service: HomeService = HomeService()
    private var food = [Food]()
    
    public var getfoods: [Food] {
        food
    }
    
    public var numberOfItems: Int {
        1
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: frame.width, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
    
    public func fetchAllRequest() {
        service.getHomeDatajson { homeData, error in
            if error == nil {
                self.food = homeData?.foods ?? []
            }
        }
    }
}

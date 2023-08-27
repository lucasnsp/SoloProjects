//
//  HomeViewModel.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 26/08/23.
//

import UIKit

class HomeViewModel {
    
    private var food = [
        Food(foodImage: "arroz_frito_com_carne_de_porco", foodName: "Arroz Frito com Carne de Porco"),
        Food(foodImage: "caril_de_frango", foodName: "Caril de Frango"),
        Food(foodImage: "macarrao_com_abobora", foodName: "Macarrão com Abóbora"),
        Food(foodImage: "salada_salsicha_de_porco_vietnamita", foodName: "Salada Vietnamita"),
    ]
    
    public var getfoods: [Food] {
        food
    }
    
    public var numberOfItems: Int {
        1
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 120, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
}

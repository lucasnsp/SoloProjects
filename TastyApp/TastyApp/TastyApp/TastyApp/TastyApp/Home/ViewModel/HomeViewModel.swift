//
//  HomeViewModel.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 26/08/23.
//

import UIKit

class HomeViewModel {
    
    private var food = [
        Food(foodImage: "arroz_frito_com_carne_de_porco", foodName: "Arroz Frito com Carne de Porco", foodDescription: "Delicioso prato de Arroz frito com carne de porco.", foodPrice: "R$ 38,90"),
        Food(foodImage: "caril_de_frango", foodName: "Caril de Frango", foodDescription: "Delicioso prato de Caril de Frango, especialidade da casa!", foodPrice: "R$ 42,90"),
        Food(foodImage: "macarrao_com_abobora", foodName: "Macarrão com Abóbora", foodDescription: "Delicioso prato de Macarrão com abóbora, um sabor inigualável.", foodPrice: "R$ 39,90"),
        Food(foodImage: "salada_salsicha_de_porco_vietnamita", foodName: "Salada Vietnamita", foodDescription: "Delicioso prato da culinária Vietnamita, não há como não experimentar.", foodPrice: "R$ 49,90"),
    ]
    
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
}

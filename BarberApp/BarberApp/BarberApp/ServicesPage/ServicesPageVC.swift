//
//  ServicesPageVC.swift
//  BarberApp
//
//  Created by Lucas Neves dos santos pompeu on 15/08/23.
//

import UIKit

class ServicesPageVC: UIViewController {
    
    var servicesPageScreen: ServicesPageScreen?
    
    
    override func loadView() {
        servicesPageScreen = ServicesPageScreen()
        view = servicesPageScreen
    }
    
    
    private weak var delegate: HomePageScreenProtocol?
    
    public func delegate(delegate: HomePageScreenProtocol) {
        self.delegate = delegate
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

//
//  ViewController.swift
//  BarberApp
//
//  Created by Lucas Neves dos santos pompeu on 15/08/23.
//

import UIKit

class HomePageVC: UIViewController {
    
    var homePageScreen: HomePageScreen?

    override func loadView() {
        homePageScreen = HomePageScreen()
        view = homePageScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homePageScreen?.delegate(delegate: self)
        
    }


}

extension HomePageVC: HomePageScreenProtocol {
    func tappedLoginButton() {
        print(#function)
    }
    
    func tappedBookButton() {
        let vc = ServicesPageVC()
        vc.modalPresentationStyle = .fullScreen
        vc.delegate(delegate: self)
        present(vc, animated: false)
        
    }
    
    
}

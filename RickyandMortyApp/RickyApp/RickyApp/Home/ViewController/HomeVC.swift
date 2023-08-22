//
//  ViewController.swift
//  RickyApp
//
//  Created by Lucas Neves dos santos pompeu on 22/08/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen: HomeScreen?
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.delegate(delegate: self)
    }


}

extension HomeVC: HomeScreenProtocol {
    func tappedLoginButton() {
        let vc = MainPageVC()
        vc.modalPresentationStyle = .fullScreen
        vc.delegate(delegate: self)
        present(vc, animated: false)
    }
    
    
}

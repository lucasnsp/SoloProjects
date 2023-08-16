//
//  LoginPageVC.swift
//  BarberApp
//
//  Created by Lucas Neves dos santos pompeu on 15/08/23.
//

import UIKit

class LoginPageVC: UIViewController {
    
    private weak var delegate: HomePageScreenProtocol?
    
    public func delegate(delegate: HomePageScreenProtocol) {
        self.delegate = delegate
    }
    
    var loginPageScreen: LoginPageScreen?
    
    override func loadView() {
        loginPageScreen = LoginPageScreen()
        view = loginPageScreen
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginPageScreen?.delegate(delegate: self)
    }
    
    

}

extension LoginPageVC: HomePageScreenProtocol {
    func tappedBookButton() {
        print(#function)
    }
    
    
}
    
extension LoginPageVC: LoginPageScreenProtocol {
    func tappedRecoverPassButton() {
        print(#function)
    }
    
    func tappedLoginButton() {
        let vc = ServicesPageVC()
        vc.modalPresentationStyle = .fullScreen
        vc.delegate(delegate: self)
        present(vc, animated: true)
    }
    

}


//
//  LoginViewModel.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 26/08/23.
//

import UIKit
import Firebase

protocol LoginViewModelProtocol: AnyObject {
    func loginSucess()
    func loginError(errorMessage: String)
}

class LoginViewModel {
    
    private weak var delegate: LoginViewModelProtocol?
    private var auth = Auth.auth()
    
    public func delegate(delegate: LoginViewModelProtocol?) {
        self.delegate = delegate
    }
    
    public func loginUser(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { authResult, error in
            if error == nil {
                print("Sucesso no Login")
                self.delegate?.loginSucess()
                
            } else {
                print("Erro no login, error: \(error?.localizedDescription ?? "")")
                self.delegate?.loginError(errorMessage: error?.localizedDescription ?? "")
            }
        }
    }
}

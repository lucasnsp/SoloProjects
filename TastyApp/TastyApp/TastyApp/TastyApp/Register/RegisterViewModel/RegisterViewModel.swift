//
//  RegisterViewModel.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 26/08/23.
//

import UIKit
import Firebase

protocol RegisterViewModelProtocol: AnyObject {
    func registerSucess()
    func errorRegister(errorMessage: String)
}

class RegisterViewModel {
    
    private weak var delegate: RegisterViewModelProtocol?
    private var auth = Auth.auth()
    
    public func delegate(delegate: RegisterViewModelProtocol?) {
        self.delegate = delegate
    }

    
    public func registerUser(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { authResult, error in
            if error == nil {
                print("Sucesso cadastro")
                self.delegate?.registerSucess()
            } else {
                print("Erro em cadastro \(error?.localizedDescription ?? "")")
                self.delegate?.errorRegister(errorMessage: error?.localizedDescription ?? "")
            }
        }
    }
}

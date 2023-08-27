//
//  RegisterVC.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 26/08/23.
//

import UIKit

class RegisterVC: UIViewController {
    
    var registerScreen: RegisterScreen?
    var viewModel: RegisterViewModel = RegisterViewModel()
    
    override func loadView() {
        registerScreen = RegisterScreen()
        view = registerScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        registerScreen?.delegate(delegate: self)
        viewModel.delegate(delegate: self)
        registerScreen?.configTextFieldDelegate(delegate: self)
    }

}

extension RegisterVC: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        let email: String = registerScreen?.emailTextField.text ?? ""
        let password: String = registerScreen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            print("Botão habilitado")
            registerScreen?.registerButton.isEnabled = true
            registerScreen?.buttonView.backgroundColor = UIColor(red: 0.31, green: 0.63, blue: 0.86, alpha: 1.00)
        } else {
            print("Botão desabilitado")
            registerScreen?.registerButton.isEnabled = false
            registerScreen?.buttonView.backgroundColor = UIColor(red: 0.31, green: 0.63, blue: 0.86, alpha: 1.00).withAlphaComponent(0.6)
        }
    }
}

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }

extension RegisterVC: RegisterScreenProtocol {
    func tappedRegisterButton() {
        viewModel.registerUser(email: registerScreen?.emailTextField.text ?? "", password: registerScreen?.passwordTextField.text ?? "")
    }
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
}

extension RegisterVC: RegisterViewModelProtocol {
    func registerSucess() {
        let vc = HomeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func errorRegister(errorMessage: String) {
        Alert(controller: self).setupShowAlertInformation(title: "Opa deu um erro aqui", message: errorMessage)
    }
    
    
}

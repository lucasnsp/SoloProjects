//
//  ViewController.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 26/08/23.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen?
    var viewModel: LoginViewModel = LoginViewModel()
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(delegate: self)
        viewModel.delegate(delegate: self)
        loginScreen?.configTextFieldDelegate(delegate: self)
    }
}

extension LoginVC: LoginScreenProtocol {
    func tappedLoginButton() {
        viewModel.loginUser(email: loginScreen?.emailTextField.text ?? "", password: loginScreen?.passwordTextField.text ?? "")
    }
    
    func tappedRegisterButton() {
        let vc = RegisterVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension LoginVC: LoginViewModelProtocol {
    func loginSucess() {
        let vc = HomeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func loginError(errorMessage: String) {
        Alert(controller: self).setupShowAlertInformation(title: "Opa deu um erro aqui", message: errorMessage)
    }
}

extension LoginVC: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        let email: String = loginScreen?.emailTextField.text ?? ""
        let password: String = loginScreen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            print("Botão habilitado")
            loginScreen?.loginButton.isEnabled = true
            loginScreen?.buttonView.backgroundColor = UIColor(red: 0.31, green: 0.63, blue: 0.86, alpha: 1.00)
        } else {
            print("Botão desabilitado")
            loginScreen?.loginButton.isEnabled = false
            loginScreen?.buttonView.backgroundColor = UIColor(red: 0.31, green: 0.63, blue: 0.86, alpha: 1.00).withAlphaComponent(0.6)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}

    

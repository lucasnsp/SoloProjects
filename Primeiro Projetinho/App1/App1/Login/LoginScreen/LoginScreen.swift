//
//  LoginScreen.swift
//  App1
//
//  Created by Lucas Neves dos santos pompeu on 12/08/23.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.text = "Sign in"
        label.textColor = UIColor.white
        return label
    }()
    
    lazy var idTextField: UITextField = {
        let id = UITextField()
        id.translatesAutoresizingMaskIntoConstraints = false
        id.placeholder = "Name OR Email"
        id.font = UIFont.systemFont(ofSize: 15)
        id.textColor = UIColor.black
        id.borderStyle = .roundedRect
        id.backgroundColor = .white.withAlphaComponent(0.6)
        id.keyboardType = .emailAddress
        id.autocorrectionType = .no
        return id
    }()
    
    lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.placeholder = "Password"
        password.font = UIFont.systemFont(ofSize: 15)
        password.textColor = UIColor.black
        password.borderStyle = .roundedRect
        password.backgroundColor = .white.withAlphaComponent(0.6)
        password.isSecureTextEntry = true
        password.autocorrectionType = .no
        return password
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign in", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        button.backgroundColor = UIColor(red: 0.3, green: 0.58, blue: 0.63, alpha: 0.4)
        return button
    }()
    
    lazy var questionText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Don't have an account?"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor(white: 1, alpha: 0.6)
        label.textAlignment = .center
        return label
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign up", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.tintColor = .white.withAlphaComponent(0.2)
        button.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedRegisterButton() {
        print("Register Button tapped")
    }
    
    
    @objc func tappedLoginButton() {
        print("Login Button tapped")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 0.3, green: 0.5, blue: 0.53, alpha: 0.7)
        addElements()
        setupConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func addElements() {
        addSubview(loginLabel)
        addSubview(idTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(questionText)
        addSubview(registerButton)
    }
    
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 65),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            idTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 120),
            idTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40),
            idTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),
            idTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 30),
            passwordTextField.leadingAnchor.constraint(equalTo: idTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: idTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 35),
            loginButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            questionText.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 140),
            questionText.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 55),
            questionText.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -55),
            
            registerButton.topAnchor.constraint(equalTo: questionText.bottomAnchor, constant: 2),
            registerButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 70),
            registerButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -70)
            
        ])
    }
    
}

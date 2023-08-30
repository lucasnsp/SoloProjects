//
//  LoginScreen.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 26/08/23.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func tappedLoginButton()
    func tappedRegisterButton()
}

class LoginScreen: UIView {
    
    private weak var delegate: LoginScreenProtocol?
    
    public func delegate(delegate: LoginScreenProtocol) {
        self.delegate = delegate
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }
    
    lazy var loginImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "frango")
        img.clipsToBounds = true
        img.layer.cornerRadius = 5
        return img
    }()
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = UIColor(red: 0.91, green: 0.62, blue: 0.24, alpha: 1.00)
        label.text = "Sign in"
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 19)
        label.text = "Email"
        label.textColor = .darkGray.withAlphaComponent(0.7)
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = .white.withAlphaComponent(0.8)
        tf.placeholder = "youremail@mail.com"
        tf.autocorrectionType = .no
        tf.textAlignment = .left
        tf.keyboardType = .emailAddress
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 15)
        tf.textColor = .black
        return tf
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 19)
        label.text = "Password"
        label.textColor = .darkGray.withAlphaComponent(0.7)
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = .white.withAlphaComponent(0.8)
        tf.placeholder = "************"
        tf.textAlignment = .left
        tf.isSecureTextEntry = true
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 15)
        tf.textColor = .black
        return tf
    }()
    
    lazy var buttonView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.31, green: 0.63, blue: 0.86, alpha: 1.00)
        view.clipsToBounds = true
        view.layer.cornerRadius = 6
        return view
    }()
    
    lazy var loginButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Sign in", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        btn.tintColor = .white
        btn.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return btn
    }()
    
    @objc
    func tappedLoginButton() {
        self.delegate?.tappedLoginButton()
    }
    
    lazy var registerButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Register here", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        btn.tintColor = .darkGray
        btn.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return btn
    }()
    
    @objc
    func tappedRegisterButton() {
        self.delegate?.tappedRegisterButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 0.96, green: 0.78, blue: 0.27, alpha: 1.00)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(loginImageView)
        addSubview(loginLabel)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(buttonView)
        addSubview(loginButton)
        addSubview(registerButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            loginImageView.topAnchor.constraint(equalTo: topAnchor),
            loginImageView.widthAnchor.constraint(equalToConstant: 400),
            loginImageView.heightAnchor.constraint(equalToConstant: 360),
            
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 220),
            loginLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 63),
            
            emailLabel.topAnchor.constraint(equalTo: loginImageView.bottomAnchor, constant: 65),
            emailLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 45),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 2),
            emailTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 45),
            emailTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -45),
            emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30),
            passwordLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 2),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 45),
            
            buttonView.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 55),
            buttonView.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            buttonView.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            buttonView.heightAnchor.constraint(equalToConstant: 50),
            
            loginButton.topAnchor.constraint(equalTo: buttonView.topAnchor),
            loginButton.leadingAnchor.constraint(equalTo: buttonView.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: buttonView.trailingAnchor),
            loginButton.bottomAnchor.constraint(equalTo: buttonView.bottomAnchor),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    

}

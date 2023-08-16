//
//  LoginPageScreen.swift
//  BarberApp
//
//  Created by Lucas Neves dos santos pompeu on 15/08/23.
//

import UIKit

protocol LoginPageScreenProtocol: AnyObject {
    func tappedRecoverPassButton()
    func tappedLoginButton()
}

class LoginPageScreen: UIView {
    
    private weak var delegate: LoginPageScreenProtocol?
    
    public func delegate(delegate: LoginPageScreenProtocol?){
        self.delegate = delegate
    }
    
    lazy var scissorsImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = (UIImage(named: "tesoura"))?.withRenderingMode(.alwaysTemplate)
        img.tintColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00)
        return img
    }()
    
    lazy var starImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = (UIImage(named: "estrela"))?.withRenderingMode(.alwaysTemplate)
        img.tintColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00)
        return img
    }()
    
    lazy var starImage2: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = (UIImage(named: "estrela"))?.withRenderingMode(.alwaysTemplate)
        img.tintColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00)
        return img
    }()
    
    lazy var moustacheImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = (UIImage(named: "bigode"))?.withRenderingMode(.alwaysTemplate)
        img.tintColor = UIColor(red: 0.25, green: 0.31, blue: 0.47, alpha: 1.00)
        return img
    }()
    
    lazy var mrTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "MR"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .white
        return label
    }()
    
    lazy var barberTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "BARBER"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00)
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.attributedPlaceholder = NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray.withAlphaComponent(1)])
        tf.keyboardType = .emailAddress
        tf.backgroundColor = .white.withAlphaComponent(0.4)
        tf.font = UIFont.systemFont(ofSize: 20)
        tf.textColor = UIColor(red: 0.15, green: 0.19, blue: 0.233, alpha: 1)
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 14
        tf.layer.borderWidth = 2
        tf.layer.borderColor = UIColor.black.withAlphaComponent(0.8).cgColor
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray.withAlphaComponent(1)])
        tf.keyboardType = .default
        tf.isSecureTextEntry = true
        tf.backgroundColor = .white.withAlphaComponent(0.4)
        tf.font = UIFont.systemFont(ofSize: 20)
        tf.textColor = UIColor(red: 0.15, green: 0.19, blue: 0.233, alpha: 1)
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 14
        tf.layer.borderWidth = 2
        tf.layer.borderColor = UIColor.black.withAlphaComponent(0.8).cgColor
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    lazy var recoverPassButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Forgot password?", for: .normal)
        button.setTitleColor(UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.titleLabel?.textAlignment = .right
        button.addTarget(self, action: #selector(tappedRecoverPassButton), for: .touchUpInside)
        return button
    }()
    
    lazy var loginButtonView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00)
        view.clipsToBounds = true
        view.layer.cornerRadius = 16
        return view
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black.withAlphaComponent(0.6), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLoginButton() {
        delegate?.tappedLoginButton()
    }
    
    @objc func tappedRecoverPassButton() {
        delegate?.tappedRecoverPassButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 0.15, green: 0.19, blue: 0.233, alpha: 1)
        addElements()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(scissorsImage)
        addSubview(starImage)
        addSubview(starImage2)
        addSubview(moustacheImage)
        addSubview(mrTitleLabel)
        addSubview(barberTitleLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(recoverPassButton)
        addSubview(loginButtonView)
        addSubview(loginButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        
            scissorsImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 120),
            scissorsImage.heightAnchor.constraint(equalToConstant: 130),
            scissorsImage.widthAnchor.constraint(equalToConstant: 120),
            scissorsImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            starImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 220),
            starImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 110),
            starImage.heightAnchor.constraint(equalToConstant: 20),
            starImage.widthAnchor.constraint(equalToConstant: 20),
            
            starImage2.topAnchor.constraint(equalTo: starImage.topAnchor),
            starImage2.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -110),
            starImage2.heightAnchor.constraint(equalToConstant: 20),
            starImage2.widthAnchor.constraint(equalToConstant: 20),
            
            moustacheImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 200),
            moustacheImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            moustacheImage.heightAnchor.constraint(equalToConstant: 150),
            moustacheImage.widthAnchor.constraint(equalToConstant: 150),
            
            mrTitleLabel.topAnchor.constraint(equalTo: moustacheImage.bottomAnchor, constant: -30),
            mrTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 85),
            mrTitleLabel.heightAnchor.constraint(equalToConstant: 50),
            
            barberTitleLabel.topAnchor.constraint(equalTo: moustacheImage.bottomAnchor, constant: -30),
            barberTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -85),
            barberTitleLabel.heightAnchor.constraint(equalToConstant: 50),
            
            emailTextField.topAnchor.constraint(equalTo: barberTitleLabel.bottomAnchor, constant: 50),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            recoverPassButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 5),
            recoverPassButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            
            loginButtonView.topAnchor.constraint(equalTo: recoverPassButton.bottomAnchor, constant: 70),
            loginButtonView.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            loginButtonView.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            loginButtonView.heightAnchor.constraint(equalToConstant: 50),
            
            loginButton.topAnchor.constraint(equalTo: loginButtonView.topAnchor),
            loginButton.leadingAnchor.constraint(equalTo: loginButtonView.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: loginButtonView.trailingAnchor),
            loginButton.bottomAnchor.constraint(equalTo: loginButtonView.bottomAnchor),
            
        ])
    }
    

}

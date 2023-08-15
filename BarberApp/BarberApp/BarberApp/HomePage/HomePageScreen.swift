//
//  HomePageScreen.swift
//  BarberApp
//
//  Created by Lucas Neves dos santos pompeu on 15/08/23.
//

import UIKit

protocol HomePageScreenProtocol: AnyObject {
    func tappedLoginButton()
    func tappedBookButton()
}

class HomePageScreen: UIView {
    
    private weak var delegate: HomePageScreenProtocol?
    
    public func delegate(delegate: HomePageScreenProtocol?) {
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
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Get the Best Haircut Here"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    lazy var buttonView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00)
        view.clipsToBounds = true
        view.layer.cornerRadius = 12
        return view
    }()
    
    lazy var bookButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Book Now", for: .normal)
        button.setTitleColor(.black.withAlphaComponent(0.6), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(tappedBookButton), for: .touchUpInside)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00), for: .normal)
        button.backgroundColor = UIColor(red: 0.15, green: 0.19, blue: 0.233, alpha: 0.9)
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00).cgColor
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLoginButton() {
        print(#function)
        delegate?.tappedLoginButton()
    }
    
    @objc func tappedBookButton() {
        print(#function)
        delegate?.tappedBookButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        setupConstraints()
        backgroundColor = UIColor(red: 0.15, green: 0.19, blue: 0.233, alpha: 0.9)
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
        addSubview(descriptionLabel)
        addSubview(buttonView)
        addSubview(bookButton)
        addSubview(loginButton)
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            scissorsImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 180),
            scissorsImage.heightAnchor.constraint(equalToConstant: 130),
            scissorsImage.widthAnchor.constraint(equalToConstant: 120),
            scissorsImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            starImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 275),
            starImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 110),
            starImage.heightAnchor.constraint(equalToConstant: 20),
            starImage.widthAnchor.constraint(equalToConstant: 20),
            
            starImage2.topAnchor.constraint(equalTo: starImage.topAnchor),
            starImage2.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -110),
            starImage2.heightAnchor.constraint(equalToConstant: 20),
            starImage2.widthAnchor.constraint(equalToConstant: 20),
            
            moustacheImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 265),
            moustacheImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            moustacheImage.heightAnchor.constraint(equalToConstant: 150),
            moustacheImage.widthAnchor.constraint(equalToConstant: 150),
            
            mrTitleLabel.topAnchor.constraint(equalTo: moustacheImage.bottomAnchor, constant: -30),
            mrTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 85),
            mrTitleLabel.heightAnchor.constraint(equalToConstant: 50),
            
            barberTitleLabel.topAnchor.constraint(equalTo: moustacheImage.bottomAnchor, constant: -30),
            barberTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -85),
            barberTitleLabel.heightAnchor.constraint(equalToConstant: 50),
            
            descriptionLabel.topAnchor.constraint(equalTo: barberTitleLabel.bottomAnchor, constant: 2),
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            buttonView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 105),
            buttonView.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonView.heightAnchor.constraint(equalToConstant: 57),
            buttonView.widthAnchor.constraint(equalToConstant: 250),
            
            bookButton.topAnchor.constraint(equalTo: buttonView.topAnchor),
            bookButton.leadingAnchor.constraint(equalTo: buttonView.leadingAnchor),
            bookButton.trailingAnchor.constraint(equalTo: buttonView.trailingAnchor),
            bookButton.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor),
            bookButton.bottomAnchor.constraint(equalTo: buttonView.bottomAnchor),
            
            loginButton.topAnchor.constraint(equalTo: bookButton.bottomAnchor, constant: 35),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.heightAnchor.constraint(equalTo: buttonView.heightAnchor),
            loginButton.widthAnchor.constraint(equalTo: buttonView.widthAnchor),
            
        ])
    }
    
}

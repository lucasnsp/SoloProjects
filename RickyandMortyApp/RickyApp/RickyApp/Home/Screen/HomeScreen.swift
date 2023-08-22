//
//  HomeScreen.swift
//  RickyApp
//
//  Created by Lucas Neves dos santos pompeu on 22/08/23.
//

import UIKit

protocol HomeScreenProtocol: AnyObject {
    func tappedLoginButton()
}

class HomeScreen: UIView {
    
    private weak var delegate: HomeScreenProtocol?
    
    public func delegate(delegate: HomeScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var backgroundImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "home3")
        return img
    }()
    
    lazy var viewButton: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 16
        view.backgroundColor = .white.withAlphaComponent(0.4)
        view.layer.borderWidth = 0.8
        view.layer.borderColor = UIColor.black.withAlphaComponent(0.5).cgColor
        return view
    }()
    
    lazy var loginButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        btn.setTitle("Login", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        btn.tintColor = .black
        return btn
    }()
    
    @objc
    func tappedLoginButton() {
        delegate?.tappedLoginButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(backgroundImage)
        addSubview(viewButton)
        viewButton.addSubview(loginButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            viewButton.topAnchor.constraint(equalTo: topAnchor, constant: 700),
            viewButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            viewButton.heightAnchor.constraint(equalToConstant: 50),
            viewButton.widthAnchor.constraint(equalToConstant: 200),
            
            loginButton.topAnchor.constraint(equalTo: viewButton.topAnchor),
            loginButton.centerXAnchor.constraint(equalTo: viewButton.centerXAnchor),
            loginButton.leadingAnchor.constraint(equalTo: viewButton.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: viewButton.trailingAnchor),
            loginButton.bottomAnchor.constraint(equalTo: viewButton.bottomAnchor),
        ])
    }

}

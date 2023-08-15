//
//  ServicesPageScreen.swift
//  BarberApp
//
//  Created by Lucas Neves dos santos pompeu on 15/08/23.
//

import UIKit

class ServicesPageScreen: UIView {
    
    lazy var profileImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "perfil")?.withRenderingMode(.alwaysOriginal)
        return image
    }()
    
    lazy var employeName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Joe Smith"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00)
        label.textAlignment = .center
        return label
    }()
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00)
        return view
    }()
    
    lazy var servicesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Available Services"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00)
        label.textAlignment = .center
        return label
    }()
    
    lazy var haircutView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        return view
    }()
    
    lazy var scissorsImageButton: UIButton = {
        let imageButton = UIButton(type: .system)
        imageButton.translatesAutoresizingMaskIntoConstraints = false
        imageButton.setImage(UIImage(named: "tesoura")?.withTintColor(UIColor.black), for: .normal)
        imageButton.tintColor = UIColor.black
        imageButton.addTarget(self, action: #selector(tappedHaircutButton), for: .touchUpInside)
        return imageButton
    }()
    
    lazy var haircutLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Haircut"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    @objc func tappedHaircutButton() {
        print(#function)
    }
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 0.15, green: 0.19, blue: 0.233, alpha: 0.9)
        addElements()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(profileImage)
        addSubview(employeName)
        addSubview(lineView)
        addSubview(servicesLabel)
        addSubview(haircutView)
        addSubview(scissorsImageButton)
        addSubview(haircutLabel)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            profileImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            profileImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            profileImage.heightAnchor.constraint(equalToConstant: 100),
            profileImage.widthAnchor.constraint(equalToConstant: 100),
            
            employeName.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 20),
            employeName.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            lineView.topAnchor.constraint(equalTo: employeName.bottomAnchor, constant: 20),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            lineView.heightAnchor.constraint(equalToConstant: 0.5),
            
            servicesLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 20),
            servicesLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            haircutView.topAnchor.constraint(equalTo: servicesLabel.bottomAnchor, constant: 32),
            haircutView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 47),
            haircutView.heightAnchor.constraint(equalToConstant: 120),
            haircutView.widthAnchor.constraint(equalToConstant: 120),
            
            scissorsImageButton.topAnchor.constraint(equalTo: haircutView.topAnchor, constant: 15),
            scissorsImageButton.bottomAnchor.constraint(equalTo: haircutView.bottomAnchor, constant: -15),
            scissorsImageButton.leadingAnchor.constraint(equalTo: haircutView.leadingAnchor, constant: 15),
            scissorsImageButton.trailingAnchor.constraint(equalTo: haircutView.trailingAnchor, constant: -15),
    
            haircutLabel.topAnchor.constraint(equalTo: scissorsImageButton.bottomAnchor, constant: 25),
            haircutLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            
            
        ])
    }
    
    
}

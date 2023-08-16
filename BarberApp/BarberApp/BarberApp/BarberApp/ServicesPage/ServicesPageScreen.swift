//
//  ServicesPageScreen.swift
//  BarberApp
//
//  Created by Lucas Neves dos santos pompeu on 15/08/23.
//

import UIKit

protocol ServicesPageScreenProtocol: AnyObject {
    func tappedLoadMoreButton()
    func tappedTreatmentButton()
    func tappedWashingButton()
    func tappedBeardButton()
    func tappedHaircutButton()
    
}

class ServicesPageScreen: UIView {
    
    private weak var delegate: ServicesPageScreenProtocol?
    
    public func delegate(delegate: ServicesPageScreenProtocol?) {
        self.delegate = delegate
    }
    
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
    
    lazy var haircutImageButton: UIButton = {
        let imageButton = UIButton(type: .system)
        imageButton.translatesAutoresizingMaskIntoConstraints = false
        imageButton.setImage(UIImage(named: "tesoura"), for: .normal)
        imageButton.tintColor = UIColor(red: 0.15, green: 0.19, blue: 0.23, alpha: 1)
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
    
    lazy var BeardView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        return view
    }()
    
    lazy var beardImageButton: UIButton = {
        let imageButton = UIButton(type: .system)
        imageButton.translatesAutoresizingMaskIntoConstraints = false
        imageButton.setImage(UIImage(named: "bigode"), for: .normal)
        imageButton.tintColor = UIColor(red: 0.15, green: 0.19, blue: 0.23, alpha: 1)
        imageButton.addTarget(self, action: #selector(tappedBeardButton), for: .touchUpInside)
        return imageButton
    }()
    
    
    lazy var beardLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Beard Trimming"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    lazy var washingView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        return view
    }()
    
    lazy var washingImageButton: UIButton = {
        let imageButton = UIButton(type: .system)
        imageButton.translatesAutoresizingMaskIntoConstraints = false
        imageButton.setImage(UIImage(named: "cabelo"), for: .normal)
        imageButton.tintColor = UIColor(red: 0.15, green: 0.19, blue: 0.23, alpha: 1)
        imageButton.addTarget(self, action: #selector(tappedWashingButton), for: .touchUpInside)
        return imageButton
    }()
    
    lazy var washingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hairwashing"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    lazy var treatmentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        return view
    }()
    
    lazy var treatmentImageButton: UIButton = {
        let imageButton = UIButton(type: .system)
        imageButton.translatesAutoresizingMaskIntoConstraints = false
        imageButton.setImage(UIImage(named: "shampoo"), for: .normal)
        imageButton.tintColor = UIColor(red: 0.15, green: 0.19, blue: 0.23, alpha: 1)
        imageButton.addTarget(self, action: #selector(tappedTreatmentButton), for: .touchUpInside)
        return imageButton
    }()
    
    lazy var treatmentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hair treatment"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    lazy var descontImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "desconto")?.withRenderingMode(.alwaysTemplate)
        image.tintColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00)
        return image
    }()
    
    lazy var loadMoreView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.78, green: 0.56, blue: 0.40, alpha: 1.00)
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        view.layer.borderWidth = 1
        return view
    }()
    
    lazy var loadMoreButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Load more", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.tintColor = UIColor(red: 0.15, green: 0.19, blue: 0.23, alpha: 1)
        button.addTarget(self, action: #selector(tappedLoadMoreButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLoadMoreButton() {
        delegate?.tappedLoadMoreButton()
    }
    
    @objc func tappedTreatmentButton() {
        delegate?.tappedTreatmentButton()
    }
    
    @objc func tappedWashingButton() {
        delegate?.tappedWashingButton()
    }
    
    @objc func tappedBeardButton() {
        delegate?.tappedBeardButton()
    }
    
    @objc func tappedHaircutButton() {
        delegate?.tappedHaircutButton()
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
        addSubview(profileImage)
        addSubview(employeName)
        addSubview(lineView)
        addSubview(servicesLabel)
        addSubview(haircutView)
        addSubview(haircutImageButton)
        addSubview(haircutLabel)
        addSubview(BeardView)
        addSubview(beardImageButton)
        addSubview(beardLabel)
        addSubview(washingView)
        addSubview(washingImageButton)
        addSubview(washingLabel)
        addSubview(treatmentView)
        addSubview(treatmentImageButton)
        addSubview(treatmentLabel)
        addSubview(descontImageView)
        addSubview(loadMoreView)
        addSubview(loadMoreButton)
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
            haircutView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            haircutView.heightAnchor.constraint(equalToConstant: 120),
            haircutView.widthAnchor.constraint(equalToConstant: 120),
            
            haircutImageButton.topAnchor.constraint(equalTo: haircutView.topAnchor, constant: 15),
            haircutImageButton.bottomAnchor.constraint(equalTo: haircutView.bottomAnchor, constant: -15),
            haircutImageButton.leadingAnchor.constraint(equalTo: haircutView.leadingAnchor, constant: 15),
            haircutImageButton.trailingAnchor.constraint(equalTo: haircutView.trailingAnchor, constant: -15),
    
            haircutLabel.topAnchor.constraint(equalTo: haircutImageButton.bottomAnchor, constant: 25),
            haircutLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            
            BeardView.topAnchor.constraint(equalTo: servicesLabel.bottomAnchor, constant: 32),
            BeardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            BeardView.heightAnchor.constraint(equalToConstant: 120),
            BeardView.widthAnchor.constraint(equalToConstant: 120),
            
            beardImageButton.topAnchor.constraint(equalTo: BeardView.topAnchor, constant: 15),
            beardImageButton.trailingAnchor.constraint(equalTo: BeardView.trailingAnchor, constant: -15),
            beardImageButton.leadingAnchor.constraint(equalTo: BeardView.leadingAnchor, constant: 15),
            beardImageButton.bottomAnchor.constraint(equalTo: BeardView.bottomAnchor, constant: -15),
            
            beardLabel.topAnchor.constraint(equalTo: BeardView.bottomAnchor, constant: 12),
            beardLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -55),
            
            washingView.topAnchor.constraint(equalTo: haircutLabel.bottomAnchor, constant: 40),
            washingView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            washingView.heightAnchor.constraint(equalToConstant: 120),
            washingView.widthAnchor.constraint(equalToConstant: 120),
            
            washingImageButton.topAnchor.constraint(equalTo: washingView.topAnchor, constant: 15),
            washingImageButton.bottomAnchor.constraint(equalTo: washingView.bottomAnchor, constant: -15),
            washingImageButton.leadingAnchor.constraint(equalTo: washingView.leadingAnchor, constant: 15),
            washingImageButton.trailingAnchor.constraint(equalTo: washingView.trailingAnchor, constant: -15),
            
            washingLabel.topAnchor.constraint(equalTo: washingView.bottomAnchor, constant: 12),
            washingLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
            
            treatmentView.topAnchor.constraint(equalTo: beardLabel.bottomAnchor, constant: 40),
            treatmentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            treatmentView.heightAnchor.constraint(equalToConstant: 120),
            treatmentView.widthAnchor.constraint(equalToConstant: 120),
            
            treatmentImageButton.topAnchor.constraint(equalTo: treatmentView.topAnchor, constant: 15),
            treatmentImageButton.trailingAnchor.constraint(equalTo: treatmentView.trailingAnchor, constant: -15),
            treatmentImageButton.leadingAnchor.constraint(equalTo: treatmentView.leadingAnchor, constant: 15),
            treatmentImageButton.bottomAnchor.constraint(equalTo: treatmentView.bottomAnchor, constant: -15),
            
            treatmentLabel.topAnchor.constraint(equalTo: treatmentView.bottomAnchor, constant: 12),
            treatmentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            
            descontImageView.topAnchor.constraint(equalTo: servicesLabel.bottomAnchor, constant: 19),
            descontImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -43),
            descontImageView.heightAnchor.constraint(equalToConstant: 50),
            descontImageView.widthAnchor.constraint(equalToConstant: 50),
            
            loadMoreView.topAnchor.constraint(equalTo: washingLabel.bottomAnchor, constant: 50),
            loadMoreView.centerXAnchor.constraint(equalTo: centerXAnchor),
            loadMoreView.heightAnchor.constraint(equalToConstant: 35),
            loadMoreView.widthAnchor.constraint(equalToConstant: 160),
            
            loadMoreButton.topAnchor.constraint(equalTo: loadMoreView.topAnchor),
            loadMoreButton.leadingAnchor.constraint(equalTo: loadMoreView.leadingAnchor),
            loadMoreButton.trailingAnchor.constraint(equalTo: loadMoreView.trailingAnchor),
            loadMoreButton.bottomAnchor.constraint(equalTo: loadMoreView.bottomAnchor),
            
        ])
    }
    
    
}

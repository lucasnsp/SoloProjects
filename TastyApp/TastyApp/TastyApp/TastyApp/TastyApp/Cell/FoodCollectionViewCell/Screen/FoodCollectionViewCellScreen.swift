//
//  FoodCollectionViewCellScreen.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 28/08/23.
//

import UIKit

class FoodCollectionViewCellScreen: UIView {
    
    lazy var cardView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black.withAlphaComponent(0.8)
        view.setCardShadow()
        view.clipsToBounds = true
        view.layer.cornerRadius = 15
        return view
    }()
    
    lazy var foodImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "demo")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 16
        image.isUserInteractionEnabled = true
        return image
    }()
    
    lazy var foodNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "foodName"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        label.numberOfLines = 2
        return label
    }()
    
    lazy var foodDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "foodDescription"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        label.numberOfLines = 4
        return label
    }()
    
    lazy var foodPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "foodPrice"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .green
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(cardView)
        cardView.addSubview(foodPriceLabel)
        cardView.addSubview(foodNameLabel)
        cardView.addSubview(foodImageView)
        cardView.addSubview(foodDescriptionLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            cardView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 18),
            cardView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            foodImageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 40),
            foodImageView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 205),
            foodImageView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -18),
            foodImageView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -40),
            
            foodNameLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 30),
            foodNameLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
            foodNameLabel.trailingAnchor.constraint(equalTo: foodImageView.leadingAnchor, constant: -20),
            
            foodDescriptionLabel.topAnchor.constraint(equalTo: foodNameLabel.bottomAnchor, constant: 20),
            foodDescriptionLabel.leadingAnchor.constraint(equalTo: foodNameLabel.leadingAnchor),
            foodDescriptionLabel.trailingAnchor.constraint(equalTo: foodImageView.leadingAnchor, constant: -20),
            
            foodPriceLabel.topAnchor.constraint(equalTo: foodImageView.bottomAnchor, constant: -10),
            foodPriceLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
            foodPriceLabel.trailingAnchor.constraint(equalTo: foodImageView.leadingAnchor, constant: -20),
        ])
    }

}

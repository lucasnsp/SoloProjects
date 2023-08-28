//
//  FoodCollectionViewCell.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 28/08/23.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "FoodCollectionViewCell"
    
    var screen: FoodCollectionViewCellScreen = FoodCollectionViewCellScreen()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreen() {
        screen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
    
    public func setupCell(data: Food) {
        screen.foodNameLabel.text = data.foodName
        screen.foodDescriptionLabel.text = data.foodDescription
        screen.foodPriceLabel.text = data.foodPrice
        screen.foodImageView.image = UIImage(named: data.foodImage)
    }
    
}

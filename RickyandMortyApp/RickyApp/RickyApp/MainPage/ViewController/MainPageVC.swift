//
//  MainPageVC.swift
//  RickyApp
//
//  Created by Lucas Neves dos santos pompeu on 22/08/23.
//

import UIKit

class MainPageVC: UIViewController {
    
    private weak var delegate: HomeScreenProtocol?
    
    public func delegate(delegate: HomeScreenProtocol?) {
        self.delegate = delegate
    }

    private var mainPageScreen: MainPageScreen?
    private var viewModel: MainPageViewModel = MainPageViewModel()
    
    override func loadView() {
        mainPageScreen = MainPageScreen()
        view = mainPageScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainPageScreen?.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
    
}

extension MainPageVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCardCollectionViewCell.identifier, for: indexPath) as? PostCardCollectionViewCell
        cell?.setupCell(listPosts: viewModel.getListPosts)
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        viewModel.sizeForItem(indexPath: indexPath, frame: collectionView.frame)
    }
    
    
}

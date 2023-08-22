//
//  MainPageViewModel.swift
//  RickyApp
//
//  Created by Lucas Neves dos santos pompeu on 22/08/23.
//

import Foundation

class MainPageViewModel {
    
    private var posts = [
        Posts(profileImage: "cool_rick", userName: "cool_rick", postImage: "cool_rick"),
        Posts(profileImage: "evil_morty", userName: "evil_morty", postImage: "evil_morty"),
        Posts(profileImage: "mouse_trap_nipples", userName: "mouse_trap_nipples", postImage: "mouse_trap_nipples"),
        Posts(profileImage: "scary_terry", userName: "scary_terry", postImage: "scary_terry"),
        Posts(profileImage: "summer", userName: "summer", postImage: "summer"),
        Posts(profileImage: "Thicktock", userName: "Thicktock", postImage: "Thicktock")
    ]
    
    public var getListPosts: [Posts] {
        posts
    }
    
    public var numberOfItems: Int {
        1
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: frame.width, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
}

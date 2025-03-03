//
//  MainViewModel.swift
//  UserDefaultsExample
//
//  Created by Santiago Moreno on 27/01/25.
//

import Foundation

class MainViewModel: ObservableObject {
    
    @Published var nickname: String = ""
    var canDelete: Bool = false
    let defaults = UserDefaults.standard
    private let nicknameKey = "nickname"

    func getNickname() {
        if let savedNickname = defaults.string(forKey: nicknameKey) {
            canDelete = true
            nickname = savedNickname
        } else {
            canDelete = false
            nickname = ""
        }
    }

    func setNickname() {
        defaults.set(nickname, forKey: nicknameKey)
        getNickname()
    }

    func deleteNickname() {
        defaults.removeObject(forKey: nicknameKey)
        getNickname()
    }
}

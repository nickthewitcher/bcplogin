//
//  KeychainStorage.swift
//  listarickapp
//
//  Created by nickthewitcher on 4/20/21.
//

import Foundation
import Security
class KeychainStorage: AccessTokenStorage{
    var accessToken: JWT = ""
   /* var keychainItemQuery: CFDictionary
    init() {
        self.keychainItemQuery = [
          kSecValueData: "abdnhzodkjyxjmcazs5tgxzfer5ij00pe9ho6g1h".data(using: .utf8)!,
          kSecClass: kSecClassGenericPassword
        ] as CFDictionary    }*/
}
protocol AccessTokenStorage: class {
    typealias JWT = String
    var accessToken: JWT { get set }
}

//
//  ApiSession.swift
//  listarickapp
//
//  Created by nickthewitcher on 4/20/21.
//

import Foundation
import Alamofire
class ApiSession{
    // No hay bearer tokens que recuperar del storage
   //  let storage = KeychainStorage()
    let session : Session
    public static let sharedInstance: ApiSession = {
        let instance = ApiSession()
        return instance
    }()
    init() {
// No hay bearer tokens en esta api así que deshabilitamos posibles interceptores
//        self.session =  Session(interceptor: RequestInterceptor(storage: storage))
        self.session =  Session()
    }
}


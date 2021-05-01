//
//  ApiService.swift
//  listarickapp
//
//  Created by nickthewitcher on 4/20/21.
//

import Foundation
import Alamofire
import RxSwift

class ApiService{
    let api :ApiSession
    static let sharedInstance: ApiService = {
       let instance = ApiService()
        return instance
    }()
    private init(){
        self.api = ApiSession.sharedInstance
    }
    
    func getTeclado() -> Observable<TecladoElement>{
        return Observable.create { [weak self] observer -> Disposable in
            self?.api.session.request(Environments.apiURL+"teclado/"+String(Int.random(in: 0...5)))
                .validate()
                .responseDecodable(of: TecladoElement.self) { result in
                    switch result.result {
                    case .success(let tecladoElement):
                        observer.onNext(tecladoElement)
                    case .failure(let error): observer.onError(error)
                    }
            }
                    return Disposables.create()
                }}

    

}


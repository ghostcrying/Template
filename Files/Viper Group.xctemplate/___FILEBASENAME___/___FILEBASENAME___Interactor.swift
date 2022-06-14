//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Moya
import MoyaExtension

final class ___VARIABLE_productName:identifier___Interactor: ___VARIABLE_productName:identifier___InteractorProtocol {
    
    weak var presenter: ___VARIABLE_productName: identifier___PresenterProtocol?
    
    private var ___VARIABLE_productName: identifier___Handle: Moya.Cancellable?
    
    private let provider = MoyaProvider<___VARIABLE_productName:identifier___API>()
    
    func cancelAllRequest() {
        ___VARIABLE_productName:identifier___Handle?.cancel()
    }
    
    func fetch(completion: @escaping (Swift.Result<___VARIABLE_productName:identifier___Item, Error>) -> ()) {
        ___VARIABLE_productName:identifier___Handle = provider.request(.___VARIABLE_productName:identifier___, mapType: ___VARIABLE_productName:identifier___Item.self) { result in
            switch result {
            case .failure(let error):
                completion(.failure(error))
            case .success(let response):
                completion(.success(response.value))
            }
        }
    }
    
}

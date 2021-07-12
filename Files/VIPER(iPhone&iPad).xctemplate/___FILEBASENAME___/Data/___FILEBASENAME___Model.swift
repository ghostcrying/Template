//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Moya
import Result

final class ___VARIABLE_productName:identifier___Model {
    
    private weak var interactor: ___VARIABLE_productName:identifier___InteractorProtocol?
    
    public init(interactor: ___VARIABLE_productName:identifier___InteractorProtocol?) {
        self.interactor = interactor
    }
    
    private let provider = MoyaProvider<___VARIABLE_productName:identifier___API>()
    
    private var ___VARIABLE_productName:identifier___Handle: Moya.Cancellable?
}

extension ___VARIABLE_productName:identifier___Model: ___VARIABLE_productName:identifier___ModelProtocol {
    
    func cancelAllRequest() {
        ___VARIABLE_productName:identifier___Handle?.cancel()
    }
    
    func ___VARIABLE_productName:identifier___(_ completion: @escaping (PTResult<[___VARIABLE_productName:identifier___Item], String?>) -> Void) {
        ___VARIABLE_productName:identifier___Handle = provider.request(.___VARIABLE_productName:identifier___, mapType: PTHTTPBaseItems<___VARIABLE_productName:identifier___Item>.self, completion: { (result) in
            switch result {
            case .failure(let error):
                completion(.failure(error.localizedDescription))
            case .success(let response):
                completion(.success(response.value?.data ?? []))
            }
        })
    }
}

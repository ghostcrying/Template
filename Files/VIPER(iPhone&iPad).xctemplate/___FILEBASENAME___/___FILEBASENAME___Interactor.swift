//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Moya

final class ___VARIABLE_productName:identifier___Interactor: ___VARIABLE_productName:identifier___InteractorProtocol {
    
    weak var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?
    private lazy var model: ___VARIABLE_productName:identifier___ModelProtocol = {
        return ___VARIABLE_productName:identifier___Model(interactor: self)
    }()
    
    func fetch() {
        model.___VARIABLE_productName:identifier___ { (result) in
            switch result {
            case .failure(let f): print(f ?? "")
            case .success(let s): print("\(s)")
            }
        }
    }
}

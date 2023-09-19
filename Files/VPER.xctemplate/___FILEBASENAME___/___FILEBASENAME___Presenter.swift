//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

final class ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___PresenterProtocol {
    
    // MARK: - Private Properties
    
    weak private var view: ___VARIABLE_productName:identifier___ViewProtocol?

    private let router: ___VARIABLE_productName:identifier___WireframeProtocol

    // MARK: - Lifecycle
    
    init(
        interface: ___VARIABLE_productName:identifier___ViewProtocol,
        router: ___VARIABLE_productName:identifier___WireframeProtocol
    ) {
        self.view = interface
        self.router = router
    }

    func fetch(completion: @escaping (Swift.Result<___VARIABLE_productName:identifier___Item, Error>) -> ()) {
        
    }
}

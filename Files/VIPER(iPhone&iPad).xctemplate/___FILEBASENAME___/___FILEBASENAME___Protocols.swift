//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// MARK: Wireframe -
protocol ___VARIABLE_productName:identifier___WireframeProtocol: class {
    
}

// MARK: Presenter -
protocol ___VARIABLE_productName:identifier___PresenterProtocol: class {
    
    func viewDidLoad()
    func viewWillAppear(_ animated: Bool)
    func viewDidAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
    func viewDidDisappear(_ animated: Bool)
    func viewWillLayoutSubviews()
    func viewDidLayoutSubviews()
}

// MARK: Interactor -
protocol ___VARIABLE_productName:identifier___InteractorProtocol: class {

    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?  { get set }
    
    func fetch()
}

// MARK: Model -
protocol ___VARIABLE_productName:identifier___ModelProtocol: class {
    
    func cancelAllRequest()
    
    func ___VARIABLE_productName:identifier___(_ completion: @escaping (PTResult<[___VARIABLE_productName:identifier___Item], String?>) -> Void)
}

// MARK: View -
protocol ___VARIABLE_productName:identifier___ViewProtocol: class {

    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?  { get set }
}

//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// MARK: Wireframe -
protocol ___VARIABLE_productName:identifier___WireframeProtocol: AnyObject {
    
}

// MARK: Presenter -
protocol ___VARIABLE_productName:identifier___PresenterProtocol: InheritControllerPresenterProtocol {
    
}

// MARK: Interactor -
protocol ___VARIABLE_productName:identifier___InteractorProtocol: AnyObject {

    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?  { get set }
    
    func cancelAllRequest()
    
    func fetch()
}

// MARK: View -
protocol ___VARIABLE_productName:identifier___ViewProtocol: AnyObject {

    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?  { get set }
}

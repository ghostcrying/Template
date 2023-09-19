//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

final class ___VARIABLE_productName:identifier___Router: ___VARIABLE_productName:identifier___WireframeProtocol {
    
    weak var view: UIViewController?
    
    static func createModule() -> UIViewController {
        let view = ___VARIABLE_productName:identifier___ViewController(nibName: nil, bundle: nil)
        let router = ___VARIABLE_productName:identifier___Router()
        let presenter = ___VARIABLE_productName:identifier___Presenter(interface: view, router: router)
        
        view.presenter = presenter
        router.view = view
        
        return view
    }
}

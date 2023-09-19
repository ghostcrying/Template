//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController, ___VARIABLE_productName:identifier___ViewProtocol {

    // MARK: - Properties
    
	var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.presenter?.viewDidLoad()
    }
    
}

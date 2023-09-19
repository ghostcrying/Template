//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - Protocol Wireframe

protocol ___VARIABLE_productName:identifier___WireframeProtocol: AnyObject {}

// MARK: - Protocol Presenter

protocol ___VARIABLE_productName:identifier___PresenterProtocol: AnyObject {
    func viewDidLoad()
    func viewWillAppear(_ animated: Bool)
    func viewDidAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
    func viewDidDisappear(_ animated: Bool)
    func viewWillLayoutSubviews()
    func viewDidLayoutSubviews()

    func fetch(completion: @escaping (Swift.Result<___VARIABLE_productName: identifier___Item, Error>) -> Void)
    func cancelAllRequest()
}

extension ___VARIABLE_productName: identifier___PresenterProtocol {
    func viewDidLoad() {}
    func viewWillAppear(_ animated: Bool) {}
    func viewDidAppear(_ animated: Bool) {}
    func viewWillDisappear(_ animated: Bool) {}
    func viewDidDisappear(_ animated: Bool) {}
    func viewWillLayoutSubviews() {}
    func viewDidLayoutSubviews() {}

    func fetch(completion: @escaping (Swift.Result<___VARIABLE_productName: identifier___Item, Error>) -> Void) {}
    func cancelAllRequest() {}
}

// MARK: - Protocol View

protocol ___VARIABLE_productName:identifier___ViewProtocol: AnyObject {
    var presenter: ___VARIABLE_productName: identifier___PresenterProtocol? { get set }
}

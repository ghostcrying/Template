//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import Moya

public enum ___VARIABLE_productName:identifier___API {
    
    case ___VARIABLE_productName:identifier___
    case list(Int)
}

extension ___VARIABLE_productName:identifier___API: TargetType {
    
    public var baseURL: URL {
        return URL(string: "https://api-park.putao.com")!
    }
    
    public var path: String {
        switch self {
        case .___VARIABLE_productName:identifier___:    return "/v1.5.0/index/menu"
        case .list(_):  return "/plate/list"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .___VARIABLE_productName:identifier___:    return .get
        case .list(_):  return .post
        }
    }
    
    public var sampleData: Data {
        switch self {
        case .___VARIABLE_productName:identifier___:    return Data()
        case .list(_):  return Data()
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case .___VARIABLE_productName:identifier___: return .requestPlain
        case .list(let page): return .requestParameters(parameters: ["page":page], encoding: JSONEncoding())
        }
    }
    
    public var validationType: Moya.ValidationType {
        return .none
    }
    
    public var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
}

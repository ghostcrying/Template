//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import ObjectMapper

struct ___VARIABLE_productName:identifier___Item: ObjectMapper.Mappable {
    
    init?(map: ObjectMapper.Map) {
    }
    
    mutating func mapping(map: ObjectMapper.Map) {
        
    }
}

/*:
 struct Temperature: Mappable {
     var celsius: Double?
     var fahrenheit: Double?

     init?(map: Map) {
     }

     mutating func mapping(map: Map) {
         celsius     <- map["celsius"]
         fahrenheit  <- map["fahrenheit"]
     }
 }
 */

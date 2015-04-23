//
//  File.swift
//  HMWK 8
//
//  Created by Marcia Elyseu on 4/22/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import Foundation
import Alamofire

class Google {
    
    class func getGoogle(){
    Alamofire.request(.GET, "http://google.com")
        .response { (request, response, data, error) in
            println(request)
            println(response)
            println(error)
        }
    }
}


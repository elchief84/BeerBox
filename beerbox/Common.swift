//
//  Common.swift
//  beerbox
//
//  Created by Vincenzo Romano on 11/08/19.
//  Copyright © 2019 Vincenzo Romano. All rights reserved.
//

import UIKit

class Common {
    private static let BASE_API:String = "https://api.punkapi.com/v2";
    public static let GET_API:String = "/beers";
    
    public static func api(method:String) -> String {
        return "\(BASE_API)\(method)";
    }
}

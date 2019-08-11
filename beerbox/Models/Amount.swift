//
//  Amount.swift
//  beerbox
//
//  Created by Vincenzo Romano on 11/08/19.
//  Copyright © 2019 Vincenzo Romano. All rights reserved.
//

import UIKit
import Realm;
import RealmSwift;

class Amount: RLMObject {
    public var value:RLMFloat;
    public var unit:String;
}

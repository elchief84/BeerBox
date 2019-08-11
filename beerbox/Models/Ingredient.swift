//
//  Ingredient.swift
//  beerbox
//
//  Created by Vincenzo Romano on 11/08/19.
//  Copyright © 2019 Vincenzo Romano. All rights reserved.
//

import UIKit
import Realm;
import RealmSwift;

class Ingredient: RLMObject {
    public var name:String;
    public var amount:Amount;
    public var add:String;
    public var attribute:String;
}

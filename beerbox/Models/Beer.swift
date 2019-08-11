//
//  Beer.swift
//  beerbox
//
//  Created by Vincenzo Romano on 11/08/19.
//  Copyright © 2019 Vincenzo Romano. All rights reserved.
//

import UIKit
import Realm;
import RealmSwift;

class Beer: RLMObject {
    public var id:Int;
    public var name:String;
    public var description_text:String;
    public var image_url:String;
    public var ingredients_male:RLMArray<Ingredient>;
    public var ingredients_hops:RLMArray<Ingredient>;
}
